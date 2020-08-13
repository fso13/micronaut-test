FROM openjdk:8-jdk-alpine
COPY build/libs/micronaut-*-all.jar micronaut-test-1.0-SNAPSHOT.jar
EXPOSE 8080
CMD ["java", "-Dcom.sun.management.jmxremote", "-Xmx128m", "-XX:+IdleTuningGcOnIdle", "-Xtune:virtualized", "-jar", "micronaut-test-1.0-SNAPSHOT.jar"]