# Use a base image that includes Java
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Maven build output (JAR file) into the container
COPY target/*.jar app.jar

# Expose the port your application runs on
EXPOSE 8082

# Define the command to run the application
CMD ["java", "-jar", "app.jar"]
