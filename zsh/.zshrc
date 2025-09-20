export DOTFILES="${HOME}/.config/dotfiles"

# Load the dotfiles' path.zsh files.
setopt NULL_GLOB # Disable error when no matches are found.
for file ("${DOTFILES}/zsh/"**/path.zsh "${DOTFILES}/custom/zsh/"**/path.zsh); do
  . "${file}"
done

# Load the Homebrew environment.
eval "$(brew shellenv)"

# Initialise completion.
autoload -Uz compinit && compinit

# Load the dotfiles' Zsh files, except the already sourced path.zsh files.
for file ("${DOTFILES}/zsh/"**/*.zsh "${DOTFILES}/custom/zsh/"**/*.zsh); do
  if [[ ! "{$file}" =~ "/path.zsh" ]]; then
    . "${file}"
  fi
done
unsetopt NULL_GLOB

# Load plugins.
. "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
. "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
eval "$(mise activate zsh)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh --cmd cd)"
