FROM udaysh/alpine3.7
MAINTAINER shiuday@gmail.com

RUN apk --no-cache add libffi libffi-dev python3 python3-dev gcc openssl-dev linux-headers libc-dev  &&  python3 -m ensurepip && pip3 install setuptools virtualenv
WORKDIR /usr/bin

RUN rm python && ln -s python python3.6 && ln -s pip pip3.6

RUN mkdir /app
WORKDIR /app
