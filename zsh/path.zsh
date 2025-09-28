if [ "$(uname -s)" = 'Darwin' ]; then
  export PATH="/opt/homebrew/bin:${PATH}"
  export PATH="/opt/homebrew/opt/llvm/bin:${PATH}"
else
  export PATH="/home/linuxbrew/.linuxbrew/bin:${PATH}"
  export PATH="/home/linuxbrew/.linuxbrew/opt/llvm/bin:${PATH}"
fi
