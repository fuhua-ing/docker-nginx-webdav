# Supported tags and respective `Dockerfile` links

-	[`latest` (*Dockerfile*)](https://github.com/mlorenzo-stratio/docker-nginx-webdav/blob/master/Dockerfile)

[![](https://badge.imagelayers.io/olopopo/docker-nginx-webdav:latest.svg)](https://imagelayers.io/?images=olopopo/docker-nginx-webdav:latest 'Get your own badge on imagelayers.io')

# How to use this image

```console
$ docker run --name webdav -p 8080:80 -v /data/webdav/media:/media -v /data/webdav/config/webdav.htpasswd:/etc/nginx/htpasswd -d olopopo/docker-nginx-webdav
```

In order for nginx to be able to write to /media the permissions must be set for user id 33 on the mapped folder /media. This is done automatically before starting nginx.

This will start a webdav server listening on the default port of 80 mapped to port 8080 on localhost.
Then access it via `http://localhost:8080` or `http://host:80` in a browser.

It will serve files located in your /media folder

To restrict access to only authorized users, you can create an htpasswd file on this site https://www.transip.nl/htpasswd/ 
