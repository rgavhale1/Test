FROM openjdk:17-jre-slim

# Setting default server port for spring app in container
ENV SERVER_PORT=8080

COPY app/target/test*.jar /usr/local/lib/test.jar

EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/local/lib/test.jar"]