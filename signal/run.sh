#!/bin/bash

set -e
set -x

docker run --rm \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $HOME/.config/Signal:/home/user/.config/Signal \
    -v $HOME/Shared:/home/user/Shared \
    -e DISPLAY=unix$DISPLAY \
    --device /dev/snd \
    dustindecker/signal