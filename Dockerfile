# Use an official Tomcat runtime as the base image
FROM tomcat:9.0.50-jdk11-openjdk-buster

# Set the working directory in the container
WORKDIR /usr/local/tomcat/webapps

# Copy the Java application artifact into the container
COPY javaapp.war .

# Expose the port on which Tomcat listens
EXPOSE 8080

# Start Tomcat server when the container launches
CMD ["catalina.sh", "run"] 


