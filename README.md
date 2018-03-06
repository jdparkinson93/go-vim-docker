[![Build Status](https://travis-ci.org/jdparkinson93/vim-go-docker.svg?branch=master)](https://travis-ci.org/jdparkinson93/vim-go-docker)
[![Coverage](https://codecov.io/gh/jdparkinson93/vim-go-docker/branch/master/graph/badge.svg)](https://codecov.io/gh/jdparkinson93/vim-go-docker)
# vim-go-docker
A docker container for [Go](https://golang.org) development utilising [vim-go](https://github.com/fatih/vim-go) and [vim-plug](https://github.com/junegunn/vim-plug).

## Usage
Ensure that the local `GOPATH` variable is set. If not, then set it: `export GOPATH=/path/to/go/path`.
```bash
docker-compose up -d && docker exec -it go-dev bash
```

To stop the environment, run:
```bash
docker-compose down
```

### Examples
For example, if your folder structure is a typical `Go` setup, shown below, then set `GOPATH=$HOME/<directory>`. Typically, `<directory>` will be something such as `go` or `dev`.
```
$HOME/
|---<directory>/
|   |---src/
|   |   |---github.com/
|   |   |   |---x/
|   |   |   |---y/
|   |   |   |---...
|   |---pkg/
|   |---bin/
```

If, on the other hand, your directory structure is more like the one below (_i.e._ there is no `src` directory) then set `GIT=$HOME`.
```
$HOME/
|---dev/
|   |---github.com/
|   |   |---x/
|   |   |---y/
|   |---some.other.repo.directory/
|   |   |---z/
|   |   |---...
```


### Files
`docker-compose.yaml`: defines container properties, i.e. volumes, directories, setup

`Dockerfile`: specifies base image used for build, i.e. `golang:latest`

`bashrc.template`: specifies desired bash settings and overwrites default `.bashrc` file

`vimrc.template`: specifies default `vim` settings and `vim-go` plugins

`script.sh`: installs `vim` and `vim-go`
