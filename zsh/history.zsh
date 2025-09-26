# Configure the Zsh history, see the following references for details on the
# parameters and options used.
# https://zsh.sourceforge.io/Doc/Release/Parameters.html#Parameters-Used-By-The-Shell
# https://zsh.sourceforge.io/Doc/Release/Options.html#History

export HISTSIZE='1000000'
export SAVEHIST="${HISTSIZE}"

setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS
setopt SHARE_HISTORY
