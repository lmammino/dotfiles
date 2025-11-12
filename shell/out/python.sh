# Python

# Support for uv/uvx and
# for pipx installed binaries (https://pypa.github.io/pipx/)
if [ -d "$HOME/.local/bin" ] && [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
  export PATH="$HOME/.local/bin:$PATH"
fi

# Pip3 installed binaries
if [ -d "$HOME/Library/Python/" ]; then
  for p in $(ls -d $HOME/Library/Python/* 2>/dev/null); do
    if [[ ":$PATH:" != *":$p/bin:"* ]]; then
      export PATH="$p/bin:$PATH"
    fi
  done
fi

# Gives priority to brew installed python
if [ -d "/usr/local/opt/python/libexec/bin" ]; then
  if [[ ":$PATH:" != *":/usr/local/opt/python/libexec/bin:"* ]]; then
    export PATH="/usr/local/opt/python/libexec/bin:$PATH"
  fi
fi

# supports pyenv
if [ -d "$HOME/.pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  # Load pyenv automatically
  if [ -n "$ZSH_VERSION" ]; then
    if [[ -o login ]]; then
      eval "$(pyenv init --path)"
    fi
  fi
  eval "$(pyenv init -)"
fi
