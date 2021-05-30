# Node.js n installer and Node.js support for fish shell

if test -d "$HOME/local"
  set -x NODE_PREFIX $HOME/local
  set -x N_PREFIX $NODE_PREFIX
  set -x PATH $NODE_PREFIX/bin $PATH
else if test -d "$HOME/n"
  set -x NODE_PREFIX $HOME/n
  set -x N_PREFIX $NODE_PREFIX
  set -x PATH $NODE_PREFIX/bin $PATH
end
