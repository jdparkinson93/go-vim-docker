## This script installs vim and vim-go plugins to the /root directory

installdir=/root

echo "Moving to $installdir directory"
echo "cd $installdir"
cd $installdir

## Install vim and libtool
apt-get update && apt-get install -y vim libtool

## Download vim-go plugins
curl -fLo $installdir/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/fatih/vim-go.git $installdir/.vim/plugged/vim-go

## Install plugins in vim
vim +PlugInstall +q +q


if [[ $? ]]; then
	echo "SUCCESS" > install.log
fi

echo "Leaving $installdir"
echo "cd /go/src"
cd /go/src

sleep 1000
