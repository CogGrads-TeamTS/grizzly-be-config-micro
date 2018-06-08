FROM openjdk:8-jre-alpine
MAINTAINER Piotr Minkowski <piotr.minkowski@gmail.com>
ADD target/config-service.jar config-service.jar
ENTRYPOINT ["java", "-Xms32m", "-Xmx128m", "-jar", "/config-service.jar"]
EXPOSE 8088