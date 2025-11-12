if [ -d "/opt/homebrew/opt/openjdk/bin" ]; then
  export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
  export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"
fi
