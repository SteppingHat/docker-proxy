FROM nginx

RUN ln -s /etc/nginx/conf.d /config

EXPOSE 80 443
VOLUME /config
VOLUME /certs
