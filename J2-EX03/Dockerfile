FROM openjdk:15-alpine

COPY basic-service-1.0-SNAPSHOT.jar /service.jar
COPY run.sh /run.sh

RUN chmod +x /*.sh

ENTRYPOINT [ "run.sh" ]