#!/bin/bash

bashrc=".bashrc"
## Create .bashrc file from template
echo "$(cat bashrc.template)" > $bashrc
echo "git config --global user.name $(git config --global user.name)" >> $bashrc
echo "git config --global user.email $(git config --global user.email)" >> $bashrc

dockerfile="Dockerfile"
echo "FROM golang:latest" > $dockerfile
echo "MAINTAINER jdparkinson93 <32483798+jdparkinson93@users.noreply.github.com>" >> $dockerfile

echo "ENV http_proxy=$http_proxy" >> $dockerfile
echo "ENV https_proxy=$https_proxy" >> $dockerfile
echo "ENV no_proxy=$no_proxy" >> $dockerfile
echo "RUN /bin/bash -c 'apt-get update && apt-get install -y vim libtool && \\" >> $dockerfile
echo "    curl -fLo /.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && \\" >> $dockerfile
echo "    git clone https://github.com/fatih/vim-go.git /.vim/plugged/vim-go'" >> $dockerfile
echo "RUN /bin/bash -c 'vim +PlugInstall +q +q'" >> $dockerfile


if [[ -z $GOPATH ]]; then
	read -p 'GOPATH not defined. Please enter: ' GOPATH
fi
GOPATH_DOCKER=$(echo "${GOPATH#$HOME}")
echo "ENV HOME=/" >> $dockerfile
echo "ENV GOPATH=$GOPATH_DOCKER" >> $dockerfile
echo "ADD .vimrc \$HOME" >> $dockerfile
echo "COPY .bashrc \$HOME" >> $dockerfile
echo "RUN /bin/bash -c 'source \$HOME/.bashrc'" >> $dockerfile
echo "WORKDIR \$GOPATH" >> $dockerfile

IMAGE_NAME="vim-go"
## Build image
docker build -t $IMAGE_NAME -f $dockerfile .

## Run container
docker run -it -v $GOPATH:$GOPATH_DOCKER $IMAGE_NAME
