FROM ubuntu:18.04
RUN apt update && apt install default-jdk maven git wget -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR boxfuse-sample-java-war-hello
RUN mvn package