if [ "$(uname -s)" = "Darwin" ]; then
  export PATH="/opt/homebrew/bin:$PATH"
else
  export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
fi

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
