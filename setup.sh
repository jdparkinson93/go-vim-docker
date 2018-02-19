#!/bin/bash

## Build image
docker build -t go-vim .

## Run container
docker run -it -v /home/ape/jparkins/git:/git go-vim
