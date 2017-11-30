# Alpine Based Development Servers for docker
* PHP 7.1.9
* Redis 4.0.2
* Node v9.2.0
* npm 5.5.1
* Elastic Search 5.6.4
* Couchdb 5.6.4





Make sure you have install docker and docker compose.


## Getting The Image

This image is published in the [Docker Hub]. Simply run this command below to get it to your machine. 

* PHP 7.1.9 (https://hub.docker.com/r/udaysh/php7/). 
    
```Shell
    docker pull udaysh/php7
```

* Redis 4.0.2 (https://hub.docker.com/r/udaysh/redis_4.0.2/)
```Shell
    docker pull udaysh/redis_4.0.2
```


* Node v9.2.0 (https://hub.docker.com/r/udaysh/node9.2/)
* npm 5.5.1
```Shell
    docker pull udaysh/node9.2
```

* Elastic Search 5.6.4 (https://hub.docker.com/r/udaysh/elasticsearch5.6.4/). 
    
```Shell
    docker pull udaysh/elasticsearch5.6.4
```

* Couchdb 5.6.4 (https://hub.docker.com/r/udaysh/couchdb2.1.1/). 
    
```Shell
    docker pull udaysh/couchdb2.1.1
```

## Docker Compose

Those who use docker compose. Simply run the following command.

```Shell
docker compose up -d
```
