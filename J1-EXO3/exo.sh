#!/bin/bash

docker stop mariadb > /dev/null 2>&1
docker rm mariadb > /dev/null 2>&1

docker stop adminer > /dev/null 2>&1
docker rm adminer > /dev/null 2>&1

docker run -d \
  --name mariadb \
  -e MYSQL_DATABASE=formationdocker \
  -e MYSQL_USER=valerie \
  -e MYSQL_PASSWORD=dismdp \
  -e MYSQL_ROOT_PASSWORD=supermotdepasse \
  -p 3306:3306 \
mariadb:10.5

docker run -d \
  --name adminer \
  -p 8080:8080 \
  --link mariadb:db \
adminer

