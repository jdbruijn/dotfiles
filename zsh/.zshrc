# Node.js version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Load the dotfiles' Zsh files.
for file ("${HOME}/.config/dotfiles/zsh/"**/*.zsh); do
  . "${file}"
done

eval "$(starship init zsh)"

# Initialise completion.
autoload -U compinit && compinit

# Load plugins
. "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
. "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
eval "$(starship init zsh)"
eval "$(zoxide init zsh --cmd cd)"
