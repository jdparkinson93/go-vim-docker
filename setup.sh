#!/bin/bash

bashrc=".bashrc"

## Create .bashrc file from template
echo "$(cat bashrc.template)" > $bashrc

## Define env variables for container using local variables
echo "export http_proxy=$http_proxy" >> $bashrc
echo "export https_proxy=$https_proxy" >> $bashrc
echo "export no_proxy=$no_proxy" >> $bashrc

GOPATH=/home/ape/jparkins/git
GOPATH_DOCKER=$(echo "${GOPATH#$HOME}")
echo "export GOPATH=$GOPATH_DOCKER" >> $bashrc

## Set git config
echo "git config --global user.name $(git config --global user.name)" >> $bashrc
echo "git config --global user.email $(git config --global user.email)" >> $bashrc

IMAGE_NAME="vim-go"
## Build image
docker build -t $IMAGE_NAME .

## Run container
docker run -it -v $GOPATH:$GOPATH_DOCKER $IMAGE_NAME
