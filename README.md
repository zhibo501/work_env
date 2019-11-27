# repo infos
This repo is a project for building my work environment anywhere.

All the following commands and configure files is under ubuntu linux,

so, first of all, you should have a ubuntu box, and configure the **source.list**. 


# 1. install softwares
As root user, do the following cmd:
```bash
# update soures list
apt-get update

# editor
apt-get install vim

# basic
apt-get install wget
apt-get install curl
apt-get install man

# bin utils
apt-get install binutils

# c/c++
apt-get install libc6-dev
apt-get install build-essential  # gcc g++ make ...
apt-get install devscripts
apt-get install autoconf automake
apt-get install cmake
apt-get install gdb
apt-get install ctags
apt-get install indent

# rust
curl https://sh.rustup.rs -sSf | sh

# golang
apt-get install golang

# script
apt-get install bash
apt-get install bash-completion
apt-get install gawk
#apt-get install python

# version controll
apt-get install git

# others

```


# 2. config bash
bashrc
```bash
cat bashrc >> ~/.bashrc
```

# 3. configure vim
vimrc & vim
```bash
cp vimrc ~/.vimrc
cp -r vim ~/.vim
```

# 4. config git
## 4.1 basic conf
```bash
git config --global user.name brun
git config --global user.email "zhibo501@gmail.com"
git config --global core.editor vim
git config --global core.autocrlf input

git config --global push.default simple

git config --global diff.tool vimdiff2
git config --global merge.tool vimdiff3

git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.br branch
git config --global alias.st status
git config --global alias.dt difftool
git config --global alias.mt mergetool
git config --global alias.unstage 'reset HEAD'
git config --global alias.last 'log -1'

#in proxy environment
#git config --global http.sslVerify false

```

The entire Pro Git book, written by Scott Chacon and Ben Straub and published by Apress, is available here.

**[Pro Git](https://git-scm.com/book/en/v2)**


## 4.2 ssh for github
create ssh key
```bash
ssh-keygen -t rsa -C "zhibo501@gmail.com"
cat ~/.ssh/id_rsa.pub
```
paste the content of id_rsa.pub to github

Settings -> SSH and GPG keys -> New SSH key

## 4.3 clone repo 
```bash
git clone git@github.com:zhibo501/work_env.git
```

# 5. config rust
Both "**cainfo**" and "**git-fetch-with-cli**" SHOULD be set in proxy environment.
cat ~/.cargo/config
```toml
[http]
proxy = "http://127.0.0.1:3128"
cainfo = "/etc/ssl/certs/ca-bundle.crt"
#sslVerify = false
check-revoke = false

[net]
retry = 3
git-fetch-with-cli = true


[source.crates-io]
replace-with = 'ustc'

[source.ustc]
registry = "git://mirrors.ustc.edu.cn/crates.io-index"

```

# 6. config go
## 6.1 basic conf
set GOPATH in .bashrc
```bash
export GOPATH=$HOME/goCode
```
then run `go env` to check GOROOT/GOPATH has been seted.
```bash
mydesktop:~$ go env
GOARCH="amd64"
GOBIN=""
GOEXE=""
GOHOSTARCH="amd64"
GOHOSTOS="linux"
GOOS="linux"
GOPATH="/home/brun/goCode"
GORACE=""
GOROOT="/usr/lib/go-1.6"
GOTOOLDIR="/usr/lib/go-1.6/pkg/tool/linux_amd64"
GO15VENDOREXPERIMENT="1"
CC="gcc"
GOGCCFLAGS="-fPIC -m64 -pthread -fmessage-length=0"
CXX="g++"
CGO_ENABLED="1"
```

## 6.2 sublime text 3
config (**Preferences** -> **Settings User**) :

```json
{
    "font_size": 15,
    "highlight_line": true,
    "highlight_modified_tabs": true,
    "ignored_packages":[],
}
```

------

Install **package control** for sublime : **[packagecontrol.io](https://packagecontrol.io/installation)**

------

Install **GoSublime** :
+ **shift + command + p**
+ **install** -> **Package control:install package**
+ **GoSublime** -> install GoSublime

**[GoSublime homepage](https://github.com/DisposaBoy/GoSublime)**

------

**sublime3 official documentation index : [link](https://www.sublimetext.com/docs/3/)**

**sublime3 shortcuts : [link](sublime3-shortcuts.md)**


## PS.
```bash
docker run -dit --name mytest -v /Users:/Users --net host -p 4000:4000 myubuntu /bin/bash
# 设置本地环境UTF8，以支持中文输入
docker exec -it 8df env LANG=C.UTF-8 /bin/bash
```
