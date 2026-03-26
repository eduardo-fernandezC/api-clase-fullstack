FROM maven:3.9.9-eclipse-temurin-24 AS builder

WORKDIR /workspace
COPY pom.xml .
COPY src ./src

# Genera el jar (omite tests para build más rápido en imagen)
RUN mvn clean package -DskipTests

FROM eclipse-temurin:24-jre

WORKDIR /app
COPY --from=builder /workspace/target/*.jar app.jar

USER nobody
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]