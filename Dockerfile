FROM openjdk:17
VOLUME /app
ARG JAR_FILE=./build/libs/aicare-monitoring-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["sh", "-c", "java -jar /app.jar"]