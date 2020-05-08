IMAGE=training-/basicservice:torra
CONTAINER=service-java

docker stop ${CONTAINER} > /dev/null 2>&1
docker rm ${CONTAINER} > /dev/null 2>&1

docker run -d --name ${CONTAINER} -P -e MEM_SIZE=256M "${IMAGE}"
