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
4.1 basic conf
```bash
git config --global user.name brun
git config --global user.email "zhibo501@gmail.com"
```

4.2 ssh for github
create ssh key
```bash
ssh-keygen -t rsa -C "zhibo501@gmail.com"
cat ~/.ssh/id_rsa.pub
```
paste the content of id_rsa.pub to github
Settings -> SSH and GPG keys -> New SSH key

4.3 clone repo 
git clone git@github.com:zhibo501/work_env.git
