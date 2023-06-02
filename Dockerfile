FROM openjdk:17-jdk-slim

# Setting default server port for spring app in container
ENV SERVER_PORT=8080

COPY /home/runner/work/Test/Test/target/Test*.jar /Test.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/Test.jar"]