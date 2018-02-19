#!/bin/bash

image_name="vim-go"

## Build image
docker build -t $image_name .

GOPATH_TARGET=/git

## Run container
docker run -it -v $GOPATH:$GOPATH_TARGET $image_name
