pipeline {

  environment {
    giturl = 'https://github.com/masterarbeithhz/BaseArchitecture_Database.git/'
    PROJECT_ID = 'crafty-sound-297315'
    CLUSTER_NAME = 'cluster-6'
    LOCATION = 'us-central1-c'
    CREDENTIALS_ID = 'crafty-sound-297315'
  }
  
  agent any

  stages {

    stage('Checkout groovy') {
      steps {
        git url:"https://github.com/masterarbeithhz/BaseArchitectureConfiguration.git", branch:'main'
        
      }
    }

    stage("Load config") {
      steps {
        script {
          load "${customer_groovy}.groovy"
          echo "${env.BA_CUSTOMER}"
          echo "${env.BA_DBNAME}"
          echo "${env.BA_DBUSER}"
          echo "${env.BA_DBDB}"
          echo "${env.BA_DBPSWD}"
          echo "${env.BA_DOMAIN}"
        }
      }
    }

    stage('Checkout Source') {
      steps {
        git url:"${giturl}", branch:'main'
      }
    }

    stage("Prepare Yaml") {
      steps {
        script {
          def data = readFile file: "kubmanifest.yaml"
          data = data.replaceAll("JSVAR_BA_DBNAME", "${env.BA_DBNAME}")
          data = data.replaceAll("JSVAR_BA_DBPSWD", "${env.BA_DBPSWD}")
          data = data.replaceAll("JSVAR_NAMESPACE", "${env.C_NAMESPACE}")
          echo data
          writeFile file: "kubmanifest.yaml", text: data
        }
      }
    }    
          
    stage('Deploy to GKE') {
        steps{
            step([$class: 'KubernetesEngineBuilder', projectId: env.PROJECT_ID, namespace:env.C_NAMESPACE, clusterName: env.CLUSTER_NAME, location: env.LOCATION, manifestPattern: 'kubmanifest.yaml', credentialsId: env.CREDENTIALS_ID, verifyDeployments: true])
        }
    }

  }

}
