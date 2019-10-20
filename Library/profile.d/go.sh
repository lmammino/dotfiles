# GoLang
if [ -d "/usr/local/go" ] && [ -d "$HOME/local/go" ]; then
  export GOROOT="/usr/local/go";
  export GOPATH="$HOME/local/go";
  export PATH=$PATH:$GOPATH/bin:$GOROOT/bin;
  export GO111MODULE=on;
fi
