if [[ -t 1 ]]; then
        put() { echo -n "\[$(tput $@)\]"; }
        PS1="$(put setaf 10)\u@\h$(put setaf 7):$(put setaf 4)\w$(put sgr0)\$ "
        unset put
fi

echo HOME=$HOME
echo GOPATH=$GOPATH


user="jdparkinson93"
email="32483798+jdparkinson93@users.noreply.github.com"

git config --global user.name $user
git config --global user.email $email
git config --global -l
