#!/bin/bash
mkdir -p src
docker run --rm -ti -v `pwd`/src:/data --name testconnect_alpine37 --workdir=/data udaysh/alpine3.7 bash
