#!/bin/sh

#PHP 7
cd ./php7 && docker build -t udaysh/php7 .
docker push udaysh/php7


cd ../node && docker build -t udaysh/node9.2 .
docker push udaysh/node9.2

cd ../redis && docker build -t udaysh/redis_4.0.2 .
docker push udaysh/redis_4.0.2

cd ../mariadb10 && docker build -t udaysh/mariadb10 .