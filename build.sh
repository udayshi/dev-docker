#!/bin/sh
push_img=1
docker_hub_user='udaysh'
GIT_STATUS_DOCKER=`git status |grep Dockerfile`
for line in $GIT_STATUS_DOCKER; do
check=`echo $line | sed s/Dockerfile//`

if [ "$line" != "$check" ]; then

    build=0;
    if [ "php7/" == "$check" ]; then
           build=1
           build_dir='php7'
           build_img='php7';
    elif [ "laravel/" == "$check" ]; then
           build=1
           build_dir='laravel'
           build_img='laravel';
     elif [ "sf4/" == "$check" ]; then
               build=1
               build_dir='sf4'
               build_img='sf4';
   elif [ "sf3/" == "$check" ]; then
               build=1
               build_dir='sf3'
               build_img='sf3';
   elif [ "zf2/" == "$check" ]; then
               build=1
               build_dir='zf2'
               build_img='zf2';
   elif [ "zf3/" == "$check" ]; then
               build=1
               build_dir='zf3'
               build_img='zf3';
    elif [ "node/" == "$check" ]; then
           build=1
           build_dir='node'
           build_img='node9.2';
    elif [ "alpine_3.6/" == "$check" ]; then
           build=1
           build_dir='alpine_3.6'
           build_img='alpine3.6';
    elif [ "alpine_3.7/" == "$check" ]; then
           build=1
           build_dir='alpine_3.7'
           build_img='alpine3.7';
    elif [ "python3/" == "$check" ]; then
           build=1
           build_dir='python3'
           build_img='python3';
    elif [ "flask/" == "$check" ]; then
               build=1
               build_dir='flask'
               build_img='flask';
  elif [ "flask-ask/" == "$check" ]; then
               build=1
               build_dir='flask-ask'
               build_img='flask-ask';
    elif [ "django/" == "$check" ]; then
               build=1
               build_dir='django'
               build_img='django';
    elif [ "redis/" == "$check" ]; then
           build=1
           build_dir='redis'
           build_img='redis_4.0.2';
    elif [ "mariadb10/" == "$check" ]; then
           build=1
           build_dir='mariadb10'
           build_img='mariadb10';
    elif [ "elasticsearch/" == "$check" ]; then
           build=1
           build_dir='elasticsearch'
           build_img='elasticsearch5.6.4';
    elif [ "couchdb/" == "$check" ]; then
           build=1
           build_dir='couchdb'
           build_img='couchdb2.1.1';
    elif [ "mongodb/" == "$check" ]; then
           build=1
           build_dir='mongodb'
           build_img='mongodb';
    fi


    DOCKER_IMAGE=$image$docker_hub_user/$build_img
    echo Building Image $DOCKER_IMAGE
    cd ./$build_dir
    docker build -t $DOCKER_IMAGE .
    git add Dockerfile
    git commit -m "Docker file changed: $DOCKER_IMAGE"
    if [ $push_img -eq 1 ]; then
        docker push $DOCKER_IMAGE
    fi
    cd ../

fi
done
