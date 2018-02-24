# vim-go-docker
An easy to use and customise docker container for Go development utilising vim-go.

### Usage
```bash
export GIT=/path/to/folder/containing/github.com/and/other/repositories
docker-compose up -d && docker exec -it go-dev bash
```
For example, if your directory structure is like the one below then set `GIT=$HOME/git`.
```
$HOME/
|---git/
|   |---github.com/
|   |   |---x/
|   |   |---y/
|   |---some.other.repo/
|   |   |---z/
|   |   |---...
```


### Files
`docker-compose.yaml`: defines container properties, i.e. volumes, directories, setup

`Dockerfile`: specifies base image used for build, i.e. `golang:latest`

`bashrc.template`: specifies desired bash settings and overwrites default `.bashrc` file

`vimrc.template`: specifies default `vim` settings and `vim-go` plugins

`script.sh`: installs `vim` and `vim-go`
