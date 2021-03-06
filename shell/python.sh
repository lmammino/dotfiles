# Python

# Gives priority to brew installed python
if test -d "/usr/local/opt/python/libexec/bin"
  set -x PATH "/usr/local/opt/python/libexec/bin" $PATH
end

# Supports for poetry (https://python-poetry.org/)
if test -f "$HOME/.poetry/env"
  source $HOME/.poetry/env
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
