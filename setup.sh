sudo yum update -y

sudo cp ~/templates/nginx.repo /etc/yum.repos.d/

sudo yum install -y vim nginx mariadb mariadb-devel
sudo systemctl start nginx
sudo systemctl enable nginx

sudo yum install -y bzip2 gcc openssl-devel zlib-devel readline-devel

echo ". ~/.bash/startup.sh" >> ~/.bashrc
. ~/.bash/startup.sh

# NeoBundle
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh && sh ./install.sh && rm ./install.sh

# Git
git config --global user.name "KNJ"
git config --global user.email "knj@wazly.net"
git config --global color.ui true
git config --global grep.lineNumber true
git config --global alias.find 'grep -H --heading --break'

# rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash

# NVM
git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`

source ~/.bash_profile
cd
