FROM udaysh/debian-8-slim
MAINTAINER shiuday@gmail.com

RUN apt-get -y && apt-get install  \
            youtube-dl \
            id3v2 \
            avconv




# Cleaning up
RUN rm -rf /usr/local/src /tmp/* /usr/share/man /var/cache/apk/* && mkdir -p /app

# Configure nginx
