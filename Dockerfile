# Use a base image with Java installed
FROM openjdk:17-jdk-alpine

# Set the working directory
WORKDIR /app

# Copy the jar file from your local build to the container
COPY target/demo.analysis-0.0.1-SNAPSHOT.jar /app/ExpenseAnalysis.jar

# Copy the YAML configuration file if needed (optional)
# COPY src/main/resources/application.yml /app/application.yml

# Expose the port your application will run on
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "/app/ExpenseAnalysis.jar"]
