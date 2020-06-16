#!/bin/bash

set -e

docker build -t kicad .

#docker run --rm -v arduino_home:/home/arduinoide arduino-ide-x11 mkdir -p .local/share

docker run -ti --rm \
       -e DISPLAY=$DISPLAY --network=host \
       -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
       -v kicad_home:/home/kicad \
       -v $HOME/.Xauthority:/home/kicad/.Xauthority \
       -v $HOME/source:/home/kicad/source \
kicad

set +e

