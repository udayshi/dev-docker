FROM debian:8-slim
MAINTAINER shiuday@gmail.com

RUN apt-get update -y && apt-get install -y \
            vim \
            git \
            wget \
            supervisor \
            nginx

# Cleaning up
RUN rm -rf /usr/local/src /tmp/* /usr/share/man /var/cache/apk/* && mkdir -p /app

# Configure nginx
