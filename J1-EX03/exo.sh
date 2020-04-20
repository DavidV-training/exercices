#!/bin/bash

docker stop mymariadb > /dev/null 2>&1
docker stop adminer > /dev/null 2>&1

docker rm mymariadb > /dev/null 2>&1
docker rm adminer > /dev/null 2>&1

docker run --name mymariadb -e MYSQL_ROOT_PASSWORD=rooting-password -e MYSQL_USER=imadmin -e MYSQL_DATABASE=mydb -e MYSQL_PASSWORD=yesimadmin -d -p 3306:3306 mariadb:latest

docker run --link mymariadb:db -p 8080:8080 adminer

