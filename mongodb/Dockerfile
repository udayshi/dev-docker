FROM alpine:3.6
MAINTAINER shiuday@gmail.com

RUN apk upgrade --update && apk --no-cache add \
            curl \
            vim \
            bash \
            git \
            wget \
            supervisor \
            nginx
RUN apk --no-cache add mongodb \
&& mkdir -p /data/db

COPY manifest/config/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]

