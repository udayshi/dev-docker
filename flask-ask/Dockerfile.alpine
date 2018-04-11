FROM udaysh/alpine3.7
MAINTAINER shiuday@gmail.com
RUN apk --no-cache --update add  python3 &&  python3 -m ensurepip

WORKDIR /usr/bin
RUN rm python && ln -s python3.6 python && ln -s pip3.6 pip

RUN pip install --upgrade pip

RUN apk --no-cache add build-base python3-dev libffi libffi-dev openssl-dev
COPY config/nginx.conf /etc/nginx/nginx.conf
COPY config/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
RUN mkdir -p /app/templates
WORKDIR /app
COPY ./src/ /app

RUN pip install -r requirements.txt
EXPOSE 80 443
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]