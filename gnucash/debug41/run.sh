#!/bin/bash

docker run -it \
      -e DISPLAY=unix$DISPLAY \
      -v c:/cygwin64/home/richd/.Xauthority:/root/.Xauthority \
      -v c:/cygwin64/tmp/.X11-unix:/tmp/.X11-unix \
      gnucash41:0

