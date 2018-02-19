FROM golang:latest

MAINTAINER jdparkinson93 <32483798+jdparkinson93@users.noreply.github.com>

ARG HOME=/.
ENV HOME=$HOME GOPATH=$HOME/git

ADD .bashrc $HOME
RUN /bin/bash -c 'source $HOME/.bashrc'


WORKDIR $GOPATH

