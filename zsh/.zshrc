# Load the dotfiles' path.zsh files.
for file ("${HOME}/.config/dotfiles/zsh/"**/path.zsh); do
  . "${file}"
done

# Load the Homebrew environment.
eval "$(brew shellenv)"

# Initialise completion.
autoload -Uz compinit && compinit

# Load the dotfiles' Zsh files, except the already sourced path.zsh files.
for file ("${HOME}/.config/dotfiles/zsh/"**/*.zsh); do
  if [[ ! "{$file}" =~ "/path.zsh" ]]; then
    . "${file}"
  fi
done

# Load plugins.
. "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
. "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
eval "$(mise activate zsh)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh --cmd cd)"
