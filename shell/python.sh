# Python

# Support for uv/uvx and
# for pipx installed binaries (https://pypa.github.io/pipx/)
if test -d "$HOME/.local/bin"
  and not contains "$HOME/.local/bin" $PATH
    set -x PATH "$HOME/.local/bin" $PATH
end

# Pip3 installed binaries
if test -d "$HOME/Library/Python/"
  for p in (ls -d $HOME/Library/Python/*)
      if not contains "$p/bin" $PATH
        set -x PATH "$p/bin" $PATH
      end
  end
end

# Gives priority to brew installed python
if test -d "/usr/local/opt/python/libexec/bin"
  if not contains "/usr/local/opt/python/libexec/bin" $PATH
    set -x PATH "/usr/local/opt/python/libexec/bin" $PATH
  end
end

# Gives priority to brew installed python
if test -d "/usr/local/opt/python/libexec/bin"
  if not contains "/usr/local/opt/python/libexec/bin" $PATH
    set -x PATH "/usr/local/opt/python/libexec/bin" $PATH
  end
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
