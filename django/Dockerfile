FROM udaysh/alpine3.7
MAINTAINER shiuday@gmail.com
RUN apk --no-cache --update add  python3 &&  python3 -m ensurepip
WORKDIR /usr/bin
RUN rm python && ln -s python3.6 python && ln -s pip3.6 pip
RUN pip install --upgrade pip
RUN pip install requests==2.18.4 flask
COPY config/nginx.conf /etc/nginx/nginx.conf
COPY config/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
RUN mkdir -p /app
WORKDIR /app
COPY ./src/ /app

RUN pip install -r requirements.txt
#RUN python manage.py collectstatic
EXPOSE 80 443
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]