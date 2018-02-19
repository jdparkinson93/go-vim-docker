#!/bin/bash

## Create .bashrc file from template
echo "$(cat bashrc.template)" > ._bashrc

## Define env variables for container using local variables
echo "export http_proxy=$http_proxy" >> ._bashrc
echo "export https_proxy=$https_proxy" >> ._bashrc
echo "export no_proxy=$no_proxy" >> ._bashrc

GOPATH=/home/ape/jparkins/git
GOPATH_DOCKER=$(echo "${GOPATH#$HOME}")
echo "export GOPATH=$GOPATH_DOCKER" >> ._bashrc

IMAGE_NAME="vim-go"
## Build image
docker build -t $IMAGE_NAME .

## Run container
docker run -it -v $GOPATH:$GOPATH_DOCKER $IMAGE_NAME
