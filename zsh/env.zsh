# Use Visual Studio Code as visual editor and Vim otherwise.
export VISUAL='code --wait --new-window'
export EDITOR='vim'

# Prefer British English with UTF-8.
export LANG='en_GB.UTF-8';
export LC_ALL='en_GB.UTF-8';

# Increase the shell history size.
export HISTSIZE='1000000'
export HISTFILESIZE="${HISTSIZE}"

# Set the TTY for GPG, so it can use interactive prompts.
export GPG_TTY="$(tty)"
