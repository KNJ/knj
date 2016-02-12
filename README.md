# KNJ's Configuration

## Getting Started

### Add SSH Key

_To me:_

Generate SSH key pair and register the public key on GitHub.

### Install NeoBundle

[Shougo/neobundle.vim](https://github.com/Shougo/neobundle.vim)

### Clone Repository

```shell
$ cd ~
$ git init
$ git remote add origin git@github.com:KNJ/knj.git
$ git pull origin master
$ git branch --set-upstream-to=origin/master master
```

### Start Vim

Open `~/.bashrc` via Vim and it will install plugins automatically.

```shell
$ vim ~/.bashrc
```

Then add following line.

```bash
. ~/.bash/startup.sh
```
