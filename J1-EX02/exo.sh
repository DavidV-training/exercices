mkdir /tmp/nginx-html/ && echo '<html><H1>Exo 2</h1></html>' > /tmp/nginx-html/index.html

docker run -d --name nginx -v /tmp/nginx-html:/usr/share/nginx/html:ro -p 8080:80 nginx

docker stop nginx && docker rm nginx
rm -rf /tmp/nginx-html