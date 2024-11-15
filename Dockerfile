# Use a base image with Java 17
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the built jar file into the container
COPY target/demo-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the port your application runs on
EXPOSE 8082

# Command to run the app
ENTRYPOINT ["java", "-jar", "app.jar"]
#Hellow
