# Node.js n installer
if which n >/dev/null 2>&1 ; then
  export NODE_PREFIX=$HOME/local;
  export N_PREFIX=$NODE_PREFIX;
  export PATH=$NODE_PREFIX/bin:$PATH;
fi
