sudo yum update -y
sudo yum install -y gcc openssl-devel zlib-devel readline-devel

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
