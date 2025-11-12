# Support for go

if [ -d "$HOME/go" ]; then
  export PATH="$HOME/go/bin:$PATH"
  export GO111MODULE=on
fi
