FROM maven:3.8.1-openjdk-8 AS BUILD
WORKDIR /usr/src/FinalProject
COPY src ./src
COPY pom.xml .
RUN mvn -f pom.xml clean install

FROM tomcat:10.0.6-jdk8-openjdk-slim AS DEPLOY
COPY --from=BUILD /usr/src/FinalProject/target/*.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080 8443