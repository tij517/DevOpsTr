FROM alpine:latest
RUN apk update
RUN apk add --no-cache tomcat9
EXPOSE 8080
CMD ["catalina.sh", "run"]