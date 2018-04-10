FROM udaysh/alpine3.7
MAINTAINER shiuday@gmail.com
RUN apk --no-cache --update add  python3 &&  python3 -m ensurepip
WORKDIR /usr/bin
RUN rm python && ln -s python3.6 python && ln -s pip3.6 pip
RUN pip install --upgrade pip
RUN pip install requests==2.18.4 flask

RUN mkdir /app
WORKDIR /app
COPY ./src/pymysql_setting.py /app/pymysql_setting.py