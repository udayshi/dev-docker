FROM debian:8-slim
MAINTAINER shiuday@gmail.com

RUN apt-get update -y && apt-get install -y \
            vim \
            git \
            wget \
            supervisor \
            nginx \
            python3 \
            python3-dev \
            python3-pip \
            libffi-dev\
            libssl-dev

# Cleaning up
RUN rm -rf /usr/local/src /tmp/* /usr/share/man /var/cache/apk/* && mkdir -p /app

# Configure nginx
COPY config/nginx.conf /etc/nginx/nginx.conf
COPY config/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
RUN mkdir -p /app/templates
WORKDIR /app
COPY ./src/ /app

RUN pip install -r requirements.txt

WORKDIR /app
RUN pip3 install -U  pip==9.0.1
RUN pip3 install -U cryptography==2.1.4
RUN pip3 install -r requirements.txt
RUN pip3 install unidecode flask flask-ask requests


EXPOSE 5000
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
#CMD ["python3", "app.py"]
