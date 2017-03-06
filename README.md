# Supported tags and respective `Dockerfile` links

-	[`latest` (*Dockerfile*)](https://github.com/mlorenzo-stratio/docker-nginx-webdav/blob/master/Dockerfile)

[![](https://badge.imagelayers.io/sashgorokhov/webdav:latest.svg)](https://imagelayers.io/?images=sashgorokhov/webdav:latest 'Get your own badge on imagelayers.io')

# How to use this image

```console
$ docker run --name webdav -p 8080:80 -v /data/webdav/media:/media -v /data/webdav/config/webdav.htpasswd:/etc/nginx/htpasswd -d olopopo/webdav
```
This will start a webdav server listening on the default port of 80.
Then access it via `http://localhost:8080` or `http://host:8080` in a browser.

This server will serve files located in your /media folder

To restrict access to only authorized users, you can create an htpasswd file on this site https://www.transip.nl/htpasswd/ 
