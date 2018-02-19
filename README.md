# vim-go-docker
A docker container for Go development using vim-go

### Usage
1. `bashrc.template`
   * configure environment variables that do not depend on system values (e.g. the prompt)
  
1. `setup.sh`
   * configure `$IMAGE_NAME` //Default value is "vim-go"
   * add any more local environment variables needed in the container

1. `.vimrc`
   * add more plug-ins if desired
   * customise `vim` settings
