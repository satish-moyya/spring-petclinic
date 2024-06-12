# Use an OpenJDK base image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Spring Boot application JAR file into the container at /app
COPY spring-petclinic-3.2.0-SNAPSHOT.jar /app/spring-petclinic.jar

# Expose the port that the Spring Boot application will run on
EXPOSE 8082

# Specify the command to run your Spring Boot application when the container starts
CMD ["java", "-jar", "spring-petclinic.jar"]
