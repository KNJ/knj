# KNJ's Configuration

## Getting Started

### Add SSH Key

_To me:_

Generate SSH key pair and register the public key on GitHub.

### Install Git and Vim

```sh
$ sudo yum install git vim
```

### Clone Repository

```sh
$ cd ~
$ git init
$ git remote add origin git@github.com:KNJ/knj.git
$ git fetch origin
$ git merge origin/master
$ git branch --set-upstream-to=origin/master master
```

### Setup

```sh
$ . setup.sh
```

### Start Vim

Starting Vim, the plugins are to be installed.

```sh
$ vim
```

But it is likely that the installation will fail. In that case, execute `:NeoBundleCheck` command.
