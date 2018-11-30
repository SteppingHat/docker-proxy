nginx proxy
===========

### About

This container is a fast lightweight container that can be used in order to reverse proxy domains to different containers on the docker host.

### Usage

    docker create \
        --name=proxy \
        -p 80:80
        -p 443:443
        -v </path/to/config>:/config
        -v </path/to/certs>:/certs
        -e TZ=<timezone>
        steppinghat/proxy

### Parameters

- `-p 80` - the default web port
- `-p 443` - the default web port for SSL
- `-v /config` - the directory for nginx config files
- `-v /certs` - the directory used for storing certificates to reference in your configs
- `-e TZ` - for timezone information (such as Australia/Sydney)

_Written by Javan Eskander @SteppingHat_
