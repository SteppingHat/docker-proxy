nginx proxy
===========

### About

This container is a fast lightweight container that can be used in order to reverse proxy domains to different containers on the docker host.

### Usage

    docker create \
        --name=proxy \
        -v <config dir>:/config
        -e TZ=<timezone>
        steppinghat/proxy

### Parameters

    `config dir` - the directory for nginx config files
    `timezone` - for timezone information (such as Australia/Sydney)



_Written by Javan Eskander @SteppingHat__
