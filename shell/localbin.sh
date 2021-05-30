# enable bin from $HOME/.local

if test -d "$HOME/.local/bin"
  set -x PATH "$HOME/.local/bin" $PATH
end
