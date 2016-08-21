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

# bin utils
apt-get install binutils

# c/c++
apt-get install libc6-dev
apt-get install build-essential  # gcc g++ make ...
apt-get install autoconf automake
apt-get install gdb
apt-get install ctags
apt-get install indent

# golang
apt-get install golang

# script
apt-get install bash
apt-get install bash-completion
apt-get install gawk
apt-get install python

# version controll
apt-get install git

# others
apt-get install wget
apt-get install curl
apt-get install man

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


## PS.
```bash
docker run -dit --name mytest -v /Users:/Users --net host -p 4000:4000 myubuntu /bin/bash
# 设置本地环境UTF8，以支持中文输入
docker exec -it 8df env LANG=C.UTF-8 /bin/bash
```
