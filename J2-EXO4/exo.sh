#!/bin/bash

docker build -t nginx-php:latest .
docker run -d --name nginx-php -p 80 nginx-php 
