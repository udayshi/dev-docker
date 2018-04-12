#!/bin/bash
mkdir -p src
docker run --rm -ti -v `pwd`/src:/data --name slim-test --workdir=/data udaysh/debian-8-slim bash
