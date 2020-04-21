FROM nginx:latest

RUN apt-get update
RUN apt-get install -y curl
RUN rm -rf /var/lib/apt/lists/* 
RUN rm -rf /etc/apt/sources.list.d/nginx.list

#RUN apt-get update && \
#    apt-get install -y curl && \
#    rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list
