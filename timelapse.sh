#!/bin/bash
export $(xargs < .env)
FPS=10
SKIP=1
RES=1280x720
DELAY=1

number=$1
interval=$2

if [ ! -d "$TIMELAPSE_IMAGE_DIR" ]; then
    mkdir $TIMELAPSE_IMAGE_DIR
fi


for (( c=1; c<=$number; c++ ))
do
    TIME=$(date +"%H-%M-%S")
    DATE_DIR=$(date +"%Y-%m-%d")
    if [ ! -d "$TIMELAPSE_IMAGE_DIR/$DATE_DIR" ]; then
        mkdir $TIMELAPSE_IMAGE_DIR/$DATE_DIR
    fi
    fswebcam -r $RES --no-banner --fps $FPS -S $SKIP -D $DELAY $TIMELAPSE_IMAGE_DIR/$DATE_DIR/$TIME.jpg
    sleep $interval
done
