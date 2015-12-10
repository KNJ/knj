l() {
  head=`echo $1|cut -c 1`
  if [ "${head}" = "/" ]; then
    path=$1
  elif [ -z "$1" ]; then
    path=$PWD
  else
    path=$PWD/$1
  fi
  color $path white
  echo -en "\t"
  ls $1 -lha
}
