# vim-go-docker
An out-of-the-box docker setup for Go development using vim-go.

### Usage
```bash
docker-compose up -d && docker exec -it go-dev bash
```

### Files
1. `bashrc.template`
   * replaces default `.bashrc` file
1. `vimrc.template`
   * specifies default `vim` settings
   * specifies default `vim-go` plugins
1. `script.sh`
   * installs `vim`
   * installs `vim-go`
