FROM ubuntu:18.04
RUN apt update && apt install default-jdk maven git wget -y
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.96/bin/apache-tomcat-9.0.96.tar.gz
RUN tar xfz apache-tomcat-9.0.96.tar.gz
RUN mv apache-tomcat-9.0.96 /var/lib/tomcat9
RUN rm -rf apache-tomcat-9.0.96.tar.gz
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR boxfuse-sample-java-war-hello
RUN mvn package && cp target/*.war /var/lib/tomcat9/webapps/
EXPOSE 8080
CMD ["/usr/share/tomcat9/bin/catalina.sh", "run"]

