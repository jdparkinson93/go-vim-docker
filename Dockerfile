FROM golang:latest

MAINTAINER jdparkinson93 <32483798+jdparkinson93@users.noreply.github.com>

ARG HOME=/.
ENV HOME=$HOME GOPATH=$HOME/git
ADD .bashrc $HOME
ADD .vimrc $HOME

RUN /bin/bash -c 'source $HOME/.bashrc && \
	apt-get update && apt-get install -y vim libtool && \
	curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && \
	git clone https://github.com/fatih/vim-go.git $HOME/.vim/plugged/vim-go && \
	vim +PlugInstall +q +q'




WORKDIR $GOPATH

