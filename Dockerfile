# Alpine Linux with OpenJDK JRE
FROM tomcat

# Go to the tomcat webapps location
WORKDIR /usr/local/tomcat/webapps/

# Expose instruction informs Docker that the container listens on the specified network ports at runtime
EXPOSE 8080

# Download Sample Application war file
RUN wget https://tomcat.apache.org/tomcat-8.0-doc/appdev/sample/sample.war
