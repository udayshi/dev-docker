FROM udaysh/alpine3.7
MAINTAINER shiuday@gmail.com
RUN apk --no-cache --update add  build-base libffi libffi-dev  linux-headers libc-dev mariadb-dev
RUN apk --no-cache --update add  python3 python3-dev &&  python3 -m ensurepip && pip3 install setuptools
WORKDIR /usr/bin
RUN rm python && ln -s python3.6 python && ln -s pip3.6 pip
RUN pip install --upgrade pip
RUN pip install pymysql

RUN pip install requests==2.18.4 Flask-Ask==0.9.8 Django==2.0.4
RUN apk del   build-base libffi libffi-dev  linux-headers libc-dev mariadb-dev

RUN mkdir /app
WORKDIR /app
COPY ./src/pymysql_setting.py /app/pymysql_setting.py