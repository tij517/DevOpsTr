FROM alpine:latest
RUN apk update
RUN apk add --no-cache openjdk11
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.95/bin/apache-tomcat-9.0.95.tar.gz
RUN tar -xvzf apache-tomcat-9.0.95.tar.gz
RUN mv apache-tomcat-9.0.95 /opt/tomcat
RUN rm -rf apache-tomcat-9.0.95.tar.gz
WORKDIR /opt/tomcat
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
