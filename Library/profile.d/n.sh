# Node.js n installer
if [ -d "$HOME/local" ] ; then
  export NODE_PREFIX=$HOME/local;
  export N_PREFIX=$NODE_PREFIX;
  export PATH=$NODE_PREFIX/bin:$PATH;
fi
