FROM tomcat:8.5-alpine
VOLUME /tmp
COPY D:/DemoWorkspace/demo/src/main/demo-0.0.1-SNAPSHOT.war /usr/local/webapps/app.war
RUN sh -c 'touch /usr/local/webapps/app.war'
ENTRYPOINT ["sh", "-c" , "java -jar touch /usr/local/webapps/app.war"]
