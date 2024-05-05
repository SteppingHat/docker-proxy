nginx proxy
===========

## ⚠️ This container has been abandoned

There are plenty of other repos that offer more functionality, more frequent updates, and are much more awesome.

Some notable options are:
* [jwilder/nginx-proxy](https://hub.docker.com/r/jwilder/nginx-proxy) _(I've used this personally)_
* [nginxproxy/nginx-proxy](https://hub.docker.com/r/nginxproxy/nginx-proxy)

Thanks to those who used my container!

---

### About

This container is a fast lightweight container that can be used in order to reverse proxy domains to different containers on the docker host.

### Usage

    docker create \
        --name=proxy \
        -p 80:80
        -p 443:443
        -v </path/to/config>:/config
        -v </path/to/certs>:/certs
        -v </path/to/logs>:/logs
        -e TZ=<timezone>
        steppinghat/proxy

### Parameters

- `-p 80` - the default web port
- `-p 443` - the default web port for SSL
- `-v /config` - the directory for nginx config files
- `-v /certs` - the directory used for storing certificates to reference in your configs
- `-v /logs` - the directory where logs can be storred (is also an internal map to /var/log/nginx)
- `-e TZ` - for timezone information (such as Australia/Sydney)

_Written by Javan Eskander @SteppingHat_
