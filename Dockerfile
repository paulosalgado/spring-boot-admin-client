FROM openjdk:8-jre-alpine
LABEL MAINTAINER Paulo Salgado <pjosalgado@gmail.com>

EXPOSE 8081

ADD build/libs/spring-boot-admin-client-java-0.0.1-SNAPSHOT.jar /
ENTRYPOINT java -XX:MaxRAM=128m -jar spring-boot-admin-client-java-0.0.1-SNAPSHOT.jar
