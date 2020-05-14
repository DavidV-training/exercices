#!/bin/bash

docker stop mariadb > /dev/null 2>&1
docker rm mariadb > /dev/null 2>&1

docker stop adminer > /dev/null 2>&1
docker rm adminer > /dev/null 2>&1

docker run -d \
  --name mariadb \
  -e MYSQL_DATABASE=DockerDB \
  -e MYSQL_USER=root \
  -e MYSQL_PASSWORD=root \
  -e MYSQL_ROOT_PASSWORD=supermotdepasse \
  -p 3306:3306 \
mariadb:10.5

docker run --link mymariadb:db -p 8080:8080 adminer

