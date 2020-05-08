#!/bin/bash

sudo docker stop mariadb && sudo docker rm mariadb
sudo docker stop adminer && sudo docker rm adminer

sudo sudo docker run \
	-d \
	--name mariadb \
	-e MYSQL_DATABASE=test \
	-e MYSQL_USER=romain \
	-e MYSQL_PASSWORD=itsame \
	-e MYSQL_ROOT_PASSWORD=sudoku \
	-p 3306:3306 \
	mariadb:latest

sudo docker run \
	-d \
	--name adminer \
	-p 8080:8080 \
	--link mariadb:db \
	adminer

curl localhost:8080


