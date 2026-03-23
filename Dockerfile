FROM openjdk:17-ea
WORKDIR /app
COPY . .
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]git