# vim-go-docker
An out-of-the-box docker setup for Go development using vim-go.

### Usage
```bash
docker-compose up -d && docker exec -it go-dev bash
```

### Files
1. `docker-compose.yaml`
   * defines container properties, i.e. volumes, directories, setup
1. `Dockerfile`
   * defines base image used for build, i.e. `golang:latest`
1. `bashrc.template`
   * replaces default `.bashrc` file
1. `vimrc.template`
   * specifies default `vim` settings
   * specifies default `vim-go` plugins
1. `script.sh`
   * installs `vim`
   * installs `vim-go`
