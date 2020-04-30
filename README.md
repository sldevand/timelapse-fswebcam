# timelapse-fswebcam

Just a script to launch fswebcam x times with a delay between photos

## Install

First, install fswebcam
```
sudo apt install fswebcam
```
copy .env.sample and rename it .env
```
sudo cp .env.sample .env
```
Replace TIMELAPSE_IMAGE_DIR=/path/to/timelapse/dir with your path

## Usage
```
./timelapse.sh <number_of_pictures> <interval>
```

## Documentation
```
man fswebcam
```
