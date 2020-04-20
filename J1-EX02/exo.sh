mkdir /var/tmp/nginx-html/ && echo '<html><H1>Exo 2</h1></html>' > /var/tmp/nginx-html/index.html

docker run -d --name nginx -v /var/tmp/nginx-html:/usr/share/nginx/html:ro -p 8080:80

docker stop nginx && docker rm nginx