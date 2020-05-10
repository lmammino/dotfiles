# exposes /usr/local/sbin where brew 
# installs some binaries (e.g. python)
if [ -d "/usr/local/sbin" ]; then
  export PATH="/usr/local/sbin:$PATH";
fi
