# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Spring Boot application JAR file into the container at /app
COPY target/my-spring-boot-otel-1.0-SNAPSHOT.jar /app/app.jar
COPY target/my-spring-boot-otel-1.0-SNAPSHOT.jar /app/app.jar

# Expose port 8080 for the Spring Boot application
EXPOSE 8080

# Specify the command to run when the container starts
CMD ["java", ""-jar", "app.jar"]
