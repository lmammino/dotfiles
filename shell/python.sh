# Python

# Pip3 installed binaries
if test -d "$HOME/Library/Python/"
  for p in (ls -d $HOME/Library/Python/*)
      set -x PATH "$p/bin" $PATH
  end
end

# Gives priority to brew installed python
if test -d "/usr/local/opt/python/libexec/bin"
  set -x PATH "/usr/local/opt/python/libexec/bin" $PATH
end

# Gives priority to brew installed python
if test -d "/usr/local/opt/python/libexec/bin"
  set -x PATH "/usr/local/opt/python/libexec/bin" $PATH
end

# Supports for poetry (https://python-poetry.org/)
if test -f "$HOME/.poetry/env"
  source $HOME/.poetry/env
end

# Supports for pipx installed binaries (https://pypa.github.io/pipx/)
if test -d "$HOME/.local/bin"
  set -x PATH "$HOME/.local/bin" $PATH
end

# supports pyenv
if test -d "$HOME/.pyenv"
  set -Ux PYENV_ROOT $HOME/.pyenv
  set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
  # Load pyenv automatically by appending
  # the following to ~/.config/fish/config.fish:
  status is-login; and pyenv init --path | source
  pyenv init - | source
end
