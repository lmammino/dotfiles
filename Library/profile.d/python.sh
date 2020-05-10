# Python

# Gives priority to brew installed python
if [ -d "/usr/local/opt/python/libexec/bin" ]; then
  export PATH="/usr/local/opt/python/libexec/bin:$PATH";
fi

# Supports for poetry (https://python-poetry.org/)
if [ -f "$HOME/.poetry/env" ]; then
  source $HOME/.poetry/env;
fi
