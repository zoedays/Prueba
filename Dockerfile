FROM tomcat:9.0-jdk17-temurin

COPY dist/Rebuild-Pj-DS.war /usr/local/tomcat/webapps/Rebuild-Pj-DS.war

EXPOSE 8080

