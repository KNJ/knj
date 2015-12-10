color() {
  declare -A colors

  # http://note.onichannn.net/archives/1138
  colors=( \
    ["black"]="0;30" \
    ["blue"]="0;34" \
    ["green"]="0;32" \
    ["cyan"]="0;36" \
    ["red"]="0;31" \
    ["purple"]="0;35" \
    ["brown"]="0;33" \
    ["light-gray"]="0;37" \
    ["dark-gray"]="1;30" \
    ["light-blue"]="1;34" \
    ["light-green"]="1;32" \
    ["light-cyan"]="1;36" \
    ["light-red"]="1;31" \
    ["light-purple"]="1;35" \
    ["yellow"]="1;33" \
    ["white"]="1;37"
  )

  echo -en "\033[${colors[$2]}m$1\033[0m"
}
