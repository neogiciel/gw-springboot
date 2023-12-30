FROM openjdk:17
VOLUME /tmp
EXPOSE 8088
ARG JAR_FILE=target/gw-springboot-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} gw-springboot.jar
ENTRYPOINT ["java","-jar","/gw-springboot.jar"]
