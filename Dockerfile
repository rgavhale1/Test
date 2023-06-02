FROM openjdk:17-jdk-slim

# Setting default server port for spring app in container
ENV SERVER_PORT=8080
WORKDIR /app

COPY home/runner/work/Test/Test/target/Test-0.0.1-SNAPSHOT.jar /app

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "Test-0.0.1-SNAPSHOT.jar"]