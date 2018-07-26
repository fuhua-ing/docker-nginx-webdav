FROM ubuntu:trusty

RUN apt-get update && apt-get install -y nginx nginx-extras apache2-utils

EXPOSE 80
COPY webdav.conf /etc/nginx/conf.d/default.conf
RUN rm /etc/nginx/sites-enabled/*

CMD chown 33:33 /media && ( ln -sf /usr/share/zoneinfo/$LOCALZONE /etc/localtime || true ) &&  nginx -g "daemon off;"
