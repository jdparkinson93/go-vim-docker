# vim-go-docker
An out-of-the-box docker setup for Go development using vim-go.

### Usage
```bash
docker-compose up -d && docker exec -it go-dev bash
```

### Files
`docker-compose.yaml`: defines container properties, i.e. volumes, directories, setup

`Dockerfile`: specifies base image used for build, i.e. `golang:latest`

`bashrc.template`: specifies desired bash settings and overwrites default `.bashrc` file

`vimrc.template`: specifies default `vim` settings and `vim-go` plugins

`script.sh`: installs `vim` and `vim-go`
