# go-vim-docker
A docker container for Go development using vim-go

### Usage
1. `.bashrc`
   * configure `git config` parameters `user.name` and `user.email`
   * adjust the prompt variable `$PS1` to personal preference

2. `.vimrc`
   * add more plug-ins if desired
   * customise `vim` settings

3. `Dockerfile`
   * configure `$HOME` and `$GOPATH` variables for the container
   
4. `setup.sh`
   * configure `$IMAGE_NAME`
   * configure `$GOPATH_TARGET` matches that specified in `Dockerfile`
