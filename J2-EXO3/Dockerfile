FROM adoptopenjdk/openjdk11:ubi
COPY basic-service-1.0-SNAPSHOT.jar /service.jar
COPY run.sh /run.sh
RUN chmod 777 /run.sh
ENTRYPOINT ["./run.sh"]
