FROM openjdk:17-jdk-slim

# Setting default server port for spring app in container
ENV SERVER_PORT=8080
WORKDIR /app

ADD target/test.jar /app

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "test.jar"]