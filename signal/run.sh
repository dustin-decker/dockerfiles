#!/bin/bash


set -e

docker run --rm \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $HOME/.config/Signal:/home/user/.config/Signal \
    -v $HOME/Shared:/home/user/Shared \
    -e DISPLAY=unix$DISPLAY \
    --device /dev/snd \
    signal