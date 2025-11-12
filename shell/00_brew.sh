# exposes /usr/local/sbin
if [ -d "/usr/local/sbin" ]; then
  export PATH="/usr/local/sbin:$PATH"
fi

# exposes /opt/homebrew/bin
if [ -d "/opt/homebrew/bin" ]; then
  export PATH="/opt/homebrew/bin:$PATH"
fi

# exposes /opt/homebrew/sbin
if [ -d "/opt/homebrew/sbin" ]; then
  export PATH="/opt/homebrew/sbin:$PATH"
fi

