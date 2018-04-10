FROM udaysh/alpine3.6
MAINTAINER shiuday@gmail.com

RUN apk --no-cache add libffi libffi-dev python3 python3-dev gcc openssl-dev linux-headers libc-dev  &&  python3 -m ensurepip && pip3 install setuptools virtualenv
WORKDIR /usr/bin

RUN rm python && ln -s python3.6 python && ln -s pip3.6 pip
RUN pip install requests==2.18.4 Flask-Ask==0.9.8 Django==2.0.4
RUN apk add --no-cache mariadb-dev g++ && \
     apk add --no-cache mariadb-client-libs && \
     apk del g++ mariadb-dev

RUN mkdir /app
WORKDIR /app
