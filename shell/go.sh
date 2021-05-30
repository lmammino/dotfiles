# Support for go

if test -d "/usr/local/go" && test -d "$HOME/local/go"
  set -x GOROOT "/usr/local/go";
  set -x GOPATH "$HOME/local/go";
  set -x PATH $PATH $GOPATH/bin $GOROOT/bin;
  set -x GO111MODULE on;
end
