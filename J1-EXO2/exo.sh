#!/bin/bash

docker stop nginx > /dev/null 2>&1
docker rm nginx > /dev/null 2>&1

mkdir -p /tmp/exo2/

echo "bonjour !" > /tmp/exo2/index.htm

docker run -d \
    --name nginx \
    -p 8080:80 \
    -v /tmp/exo2/:/usr/share/nginx/html:ro \
nginx:latest

