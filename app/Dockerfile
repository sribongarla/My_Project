FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

COPY target/eks-devops-platform.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
