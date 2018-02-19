if [[ -t 1 ]]; then
        put() { echo -n "\[$(tput $@)\]"; }
        PS1="$(put setaf 10)\u@\h$(put setaf 7):$(put setaf 4)\w$(put sgr0)\$ "
        unset put
fi
export http_proxy=http://ukproxy.lseg.stockex.local:8082
export https_proxy=http://ukproxy.lseg.stockex.local:8082
export no_proxy=localhost,127.0.0.0/8,10.0.0.0/8,.local,192.168.30.100
export GOPATH=/git
git config --global user.name jdparkinson93
git config --global user.email 32483798+jdparkinson93@users.noreply.github.com
