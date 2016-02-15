hmf() {
  ls -laRU $1| grep -c '^-'
}
