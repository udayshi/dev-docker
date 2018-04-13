#!/bin/bash
mkdir -p src
docker run --rm -ti -v `pwd`/src:/data --workdir=/data --name media-test  udaysh/media bash
