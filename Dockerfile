
FROM tomcat:8.5-alpine
# Install Java.
RUN \
  apt-get update && \
  apt-get install -y openjdk-7-jdk
# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64
VOLUME /tmp
COPY /target/demo-0.0.1-SNAPSHOT.war /usr/local/webapps/app.war
RUN sh -c 'touch /usr/local/webapps/app.war'
ENTRYPOINT ["sh", "-c" , "java -jar /usr/local/webapps/app.war"]
