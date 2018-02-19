#!/bin/bash

## Build image
docker build -t go-vim .

## Run container
docker run -it -v $HOME/git:/git go-vim
