# Use Eclipse Temurin (OpenJDK) as base image
FROM eclipse-temurin:21-jdk as runtime

# Set working directory
WORKDIR /app

# Copy the built jar file from your local machine into the container
COPY target/book-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your Spring Boot app runs on
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]
