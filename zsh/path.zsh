if [ "$(uname -s)" = "Darwin" ]; then
  export PATH="/opt/homebrew/bin:${PATH}"
else
  export PATH="/home/linuxbrew/.linuxbrew/bin:${PATH}"
fi

export PATH="${PATH}:$(brew --prefix rustup)/bin"
