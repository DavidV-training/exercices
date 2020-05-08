#!/bin/bash


sudo docker stop nginx 
sudo docker rm nginx 

sudo docker run -d \
    --name nginx \
    -p 8080:80 \
    --health-cmd 'if [ "`curl -I -s -o /dev/null -w "%{http_code}" localhost`" = "200" ] ; then exit 0; else exit -1; fi' \
    --health-interval 5s \
nginx

echo Verification avec curl

curl -I -s -o /dev/null -w "%{http_code}" localhost:8080/
