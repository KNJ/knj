# rbenv
if [ -d ~/.rbenv ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# http://yak-shaver.blogspot.jp/2013/10/blog-post_9.html
walk() {
  for e in $1/*; do
    path=$e
    if [ -d "$path" ]; then
      walk "$path"
    elif [ -f "$path" ]; then
      . "$path"
    fi
  done
}

walk ~/.bash/alias
walk ~/.bash/function
