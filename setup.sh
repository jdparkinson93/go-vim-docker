#!/bin/bash
IMAGE_NAME="vim-go"

## Build image
docker build -t $IMAGE_NAME .

GOPATH_TARGET=/git

## Run container
docker run -it -v $GOPATH:$GOPATH_TARGET $IMAGE_NAME
