#!/bin/bash
xhost +
docker run -tid --privileged --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --name=soa-labs sszwaczyk/soa-labs
./attach.sh
