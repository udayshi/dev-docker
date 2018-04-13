#!/bin/bash
mkdir -p src
docker run --rm -ti -v `pwd`/src:/data --workdir=/data --name node-test  udaysh/node9.2 bash
