FROM ubuntu:trusty

RUN apt-get update && apt-get install -y nginx nginx-extras apache2-utils

EXPOSE 80
COPY webdav.conf /etc/nginx/conf.d/default.conf
RUN rm /etc/nginx/sites-enabled/*

CMD chown 33:33 /media && sed -i "s/__WRITE_HOST__/$WRITE_HOST/" /etc/nginx/conf.d/default.conf && nginx -g "daemon off;"
