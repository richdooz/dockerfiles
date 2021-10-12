#!/bin/bash

docker run -it \
      -e DISPLAY=host.docker.internal:0 \
      -v c:/cygwin64/home/richd/.Xauthority:/root/.Xauthority \
      -v c:/cygwin64/tmp/.X11-unix:/tmp/.X11-unix \
      gnucash48:0


