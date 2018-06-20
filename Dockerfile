FROM openjdk:8-jre-alpine

EXPOSE 8081

ADD build/libs/spring-boot-admin-client-java-0.0.1-SNAPSHOT.jar /
ENTRYPOINT java -XX:MaxRAM=128m -D\"spring.boot.admin.url=${ADMIN_URL}\" -jar spring-boot-admin-client-java-0.0.1-SNAPSHOT.jar
