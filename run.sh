#!/bin/bash
xhost +
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
docker run -tid --privileged --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v ${DIR}/data/:/root/data --name=soa-labs sszwaczyk/soa-labs
./attach.sh
