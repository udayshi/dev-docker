#!/bin/bash
mkdir -p src
docker run --rm -ti -v `pwd`/src:/data --workdir=/data  --name testconnect_alpine36  udaysh/alpine3.6 bash
