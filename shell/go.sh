# Support for go

if test -d "$HOME/go"
  set -x PATH $HOME/go/bin $PATH;
  set -x GO111MODULE on;
end
