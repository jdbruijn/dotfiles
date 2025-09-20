# Currently a copy from Oh My Zsh.
# https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/vscode/vscode.plugin.zsh

# VS Code (stable / insiders) / VSCodium zsh plugin
# Authors:
#   https://github.com/MarsiBarsi (original author)
#   https://github.com/babakks
#   https://github.com/SteelShot
#   https://github.com/AliSajid

function vsc {
  if (( $# )); then
    code $@
  else
    code .
  fi
}

alias vsca='code --add'
alias vscd='code --diff'
alias vscg='code --goto'
alias vscn='code --new-window'
alias vscr='code --reuse-window'
alias vscw='code --wait'
alias vscu='code --user-data-dir'
alias vscp='code --profile'

alias vsced='code --extensions-dir'
alias vscie='code --install-extension'
alias vscue='code --uninstall-extension'

alias vscv='code --verbose'
alias vscl='code --log'
alias vscde='code --disable-extensions'
