#!/bin/bash

set -e

docker build -t arduino-ide-x11 .

docker run --rm -v arduino_home:/home/arduinoide arduino-ide-x11 mkdir -p .local/share

docker run -ti --rm \
       -e DISPLAY=$DISPLAY --network=host \
       -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
       -v arduino_home:/home/arduinoide \
       -v $HOME/.Xauthority:/home/arduinoide/.Xauthority \
       -v $HOME/source:/home/arduinoide/source \
       -v $HOME/Arduino:/home/arduinoide/Arduino \
       --device=/dev/ttyUSB0 \
arduino-ide-x11

set +e

