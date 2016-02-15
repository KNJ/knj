hmd() {
  ls -laRU $1| egrep -c '^d.+[^.]$'
}
