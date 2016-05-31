# KNJ's Configuration

## Getting Started

### Add SSH Key

Generate SSH key pair and register the public key on GitHub.

### Install Git, Vim and Ansible

```bash
sudo yum install git vim
```

Ansible >= 2.1 required.

```bash
sudo yum install ansible --enablerepo=epel-testing
```

### Clone Repository

```bash
$ cd ~
$ git init
$ git remote add origin git@github.com:KNJ/knj.git
$ git fetch origin
$ git merge origin/master
$ git branch --set-upstream-to=origin/master master
```

### Start Vim

Starting Vim, the plugins are to be installed.

```bash
$ vim
```

But it is likely that the installation will fail. In that case, execute `:NeoBundleCheck` command.

## Server Provisioning

### Target Server Requirements

- CentOS 7
- Python >= 2.6

### Installations

- nginx
- MariaDB
- Redis
- PHP 7
- Ruby (via rbenv)
- Node.js (via nvm)

### Development Server

Configure `ansible/inventories/development.example` to save as `ansible/inventories/development`. Boot the slave server and make sure the master server can connect with the slave. Then run `ansible-playbook` command.

_Example:_

```bash
ansible-playbook ~/ansible/web.yml -i ~/ansible/inventories/development -u centos --private-key=~/.ssh/ansible.pem
```
