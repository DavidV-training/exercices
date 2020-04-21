#!/bin/sh
export DOCKER_RUN_EXTRA_ARGS="$@"

trap 'kill -TERM $PID' TERM INT

# Java memory options
MEM_SIZE_DEFAULT="128m"
MEM_SIZE="${MEM_SIZE:-$MEM_SIZE_DEFAULT}"
JAVA_MEM_OPTS_DEFAULT="-Xms${MEM_SIZE} -Xmx${MEM_SIZE}"
JAVA_MEM_OPTS="${JAVA_MEM_OPTS:-$JAVA_MEM_OPTS_DEFAULT}"

# Others Java options
JAVA_OPTS_DEFAULT="-server"
JAVA_OPTS="${JAVA_OPTS:-$JAVA_OPTS_DEFAULT}"

echo "java ${JAVA_OPTS} ${JAVA_MEM_OPTS} -jar /service.jar"
java ${JAVA_OPTS} ${JAVA_MEM_OPTS} -jar /service.jar ${DOCKER_RUN_EXTRA_ARGS}

PID=$!
wait $PID
trap - TERM INT
wait $PID
EXIT_STATUS=$?