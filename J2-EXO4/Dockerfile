FROM alpine:latest

RUN apk add nginx
RUN apk add php7 
RUN apk add php7-fpm
RUN apk add supervisor

ADD default.conf /etc/nginx/conf.d/
ADD nginx.conf /etc/nginx/
ADD index.php /usr/local/nginx/html/
ADD index.html /usr/local/nginx/html/
ADD www.conf /etc/php7/php-fpm.d/
ADD supervisord.conf /etc/supervisord.conf

RUN chown nginx:nginx /usr/local/nginx/html/index.*
RUN touch /tmp/php-fpm.sock && chown nginx:nginx /tmp/php-fpm.sock

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
