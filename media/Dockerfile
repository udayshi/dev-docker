FROM udaysh/debian-8-slim
MAINTAINER shiuday@gmail.com

RUN apt-get install -y youtube-dl id3v2 libav-tools

WORKDIR /usr/bin
RUN ln -s avconv ffmpeg


# Cleaning up
RUN rm -rf /usr/local/src /tmp/* /usr/share/man /var/cache/apk/* && mkdir -p /app

# Configure nginx
