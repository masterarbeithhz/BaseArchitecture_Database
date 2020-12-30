FROM ubuntu:16.04

#MySQL Client
RUN apt-get update && apt-get upgrade -y
RUN apt-get install mysql-client -y
RUN apt-get install apt-utils -y
#RUN apt-get install nano -y

COPY image_files/gcSession.sh /opt/gcSession.sh
COPY image_files/tbl_create.sql /opt/tbl_create.sql
RUN chmod +x /opt/gcSession.sh
