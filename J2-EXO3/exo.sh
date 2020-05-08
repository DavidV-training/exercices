#!/bin/bash

IMAGE=training/basicservice:dve
CONTAINER=service-java
OPTIONS='--server.port=8081'

docker stop ${CONTAINER} > /dev/null 2>&1
docker rm ${CONTAINER} > /dev/null 2>&1

docker build -t ${IMAGE} .

docker run -d \
  --name ${CONTAINER} \
  -p 8081 \
  -e MEM_SIZE=256M \
  --health-interval 1s \
  --health-cmd 'wget -T 1 -q -O /dev/null localhost:8081/actuator/health' \
"${IMAGE}" "${OPTIONS}"