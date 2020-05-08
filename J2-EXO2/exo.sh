docker stop nginx > /dev/null 2>&1
docker rm nginx > /dev/null 2>&1

docker run -d \
    --name nginx \
    -p 8080:80 \
    --health-cmd 'if [ "`curl -I -s -o /dev/null -w "%{http_code}" localhost`" = "200" ] ; then exit 0; else exit -1; fi' \
    --health-interval 5s \
nginx-dve-multi-ligne
