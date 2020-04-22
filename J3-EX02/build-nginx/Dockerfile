FROM alpine:latest

RUN apk update
RUN apk add --no-cache nginx
RUN apk add --no-cache php7
RUN apk add --no-cache php7-fpm
RUN apk add --no-cache supervisor

COPY default.conf /etc/nginx/conf.d/
COPY nginx.conf /etc/nginx/
COPY index.php /usr/local/nginx/html/
COPY index.htm /usr/local/nginx/html/
COPY www.conf /etc/php7/php-fpm.d/
COPY supervisord.conf /etc/supervisord.conf

RUN chown nginx:nginx /usr/local/nginx/html/index.*
RUN touch /tmp/php-fpm.sock && chown nginx:nginx /tmp/php-fpm.sock

CMD ["/usr/bin/supervisord","-c","/etc/supervisord.conf"]