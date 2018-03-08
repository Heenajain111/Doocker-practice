# Pull base image
From tomcat:8-jre8

# Copy to images tomcat path
ADD /target/demo-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/
