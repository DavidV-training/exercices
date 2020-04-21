docker stop nginx > /dev/null 2>&1
docker rm nginx > /dev/null 2>&1

mkdir -p /tmp/exo2/
docker run -d --name nginx -v /tmp/exo2/:/usr/share/nginx/html:ro -p 8080:80 nginx:latest


