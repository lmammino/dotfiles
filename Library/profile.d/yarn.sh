# Yarn
if [ -f "$HOME/.yarn/bin" ]; then
  export PATH="$HOME/.yarn/bin:$PATH";
fi

if [ -f "$HOME/.config/yarn/global/node_modules/.bin" ]; then
  export PATH="$HOME/.config/yarn/global/node_modules/.bin:$PATH";
fi
