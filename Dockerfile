FROM openjdk:17
WORKDIR /app
ARG JAR_FILE
COPY build/libs/${JAR_FILE}.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]