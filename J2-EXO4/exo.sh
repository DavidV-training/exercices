#!/bin/sh

IMAGE=training/ex-docker-nginx-phpfpm:mamadou
CONTAINER=ex-docker-nginx-phpfpm


docker stop "${CONTAINER}" > /dev/null 2>&1
docker rm "${CONTAINER}" > /dev/null 2>&1

echo "==================Build du docker File========================="
docker build -t ${IMAGE} .

docker run -d \
  --name ${CONTAINER} \
  -p 8081 \
  --health-interval 1s \
  --health-cmd 'wget -T 1 -q -O /dev/null localhost:8080/index.php' \
"${IMAGE}"
