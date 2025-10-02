# Use Visual Studio Code as visual editor and Vim otherwise.
export VISUAL='code --wait --new-window'
export EDITOR='vim'

# Prefer British English with UTF-8.
export LANG='en_GB.UTF-8';
export LC_ALL='en_GB.UTF-8';

# Pass the "--greedy" option to all Homebrew cask upgrade commands.
export HOMEBREW_UPGRADE_GREEDY=1

# Set the TTY for GPG, so it can use interactive prompts.
export GPG_TTY="$(tty)"

# Remove "/" from the characters considered to be a single word.
export WORDCHARS="${WORDCHARS//\/}"

# Set the SSH authentication socket for Secretive on macOS.
if [ "$(uname -s)" = 'Darwin' ]; then
  export DOTFILES_SSH_AUTH_SOCK="${SSH_AUTH_SOCK}"
  export SSH_AUTH_SOCK="${HOME}/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh"
fi
