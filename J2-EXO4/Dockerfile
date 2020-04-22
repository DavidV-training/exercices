FROM alpine:latest

RUN apk update
RUN apk add --no-cache nginx
RUN apk add --no-cache php7 php7-fpm
RUN apk add --no-cache supervisor 

ADD default.conf /etc/nginx/conf.d/
ADD nginx.conf /etc/nginx/
ADD index.php /usr/local/nginx/html/
ADD index.htm /usr/local/nginx/html/
ADD www.conf /etc/php7/php-fpm.d/

RUN chown nginx:nginx /usr/local/nginx/html/index.*
RUN touch /tmp/php-fpm.sock && chown nginx:nginx /tmp/php-fpm.sock

ADD supervisord.conf /etc/supervisord.conf
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
