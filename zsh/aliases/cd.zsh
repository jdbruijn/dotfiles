alias ~='cd ~/'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'

# Create a directory and change directories into it.
#
# Usage: mcd <path>
function mcd() {
  mkdir -p -- "${1}"
  cd -- "${1}"
}
