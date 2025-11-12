# Node.js n installer and Node.js support for zsh

if [ -d "$HOME/local" ]; then
  export NODE_PREFIX="$HOME/local"
  export N_PREFIX="$NODE_PREFIX"
  export PATH="$NODE_PREFIX/bin:$PATH"
elif [ -d "$HOME/n" ]; then
  export NODE_PREFIX="$HOME/n"
  export N_PREFIX="$NODE_PREFIX"
  export PATH="$NODE_PREFIX/bin:$PATH"
fi

# Bun support
if [ -d "$HOME/.bun" ]; then
  export BUN_INSTALL="$HOME/.bun"
  export PATH="$BUN_INSTALL/bin:$PATH"
fi
