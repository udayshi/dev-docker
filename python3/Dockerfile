FROM udaysh/alpine3.7
MAINTAINER shiuday@gmail.com

RUN apk --no-cache add libffi libffi-dev python3 python3-dev gcc openssl-dev linux-headers libc-dev  &&  python3 -m ensurepip && pip3 install setuptools virtualenv
WORKDIR /usr/bin

RUN rm python && ln -s python3.6 python && ln -s pip3.6 pip

RUN mkdir /app
WORKDIR /app
