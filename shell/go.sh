# Support for go

if test -d "/usr/local/opt/go/libexec" && test -d "$HOME/go"
  set -x GOROOT "/usr/local/opt/go/libexec";
  set -x GOPATH "$HOME/go";
  set -x PATH $GOPATH/bin $GOROOT/bin $PATH;
  set -x GO111MODULE on;
end
