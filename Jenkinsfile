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

    stage('Checkout Source') {
      steps {
        git url:"${giturl}", branch:'main'
      }
    }
          
    stage('Deploy to GKE') {
        steps{
            step([$class: 'KubernetesEngineBuilder', projectId: env.PROJECT_ID, clusterName: env.CLUSTER_NAME, location: env.LOCATION, manifestPattern: 'kubmanifest.yaml', credentialsId: env.CREDENTIALS_ID, verifyDeployments: true])
        }
    }

  }

}
