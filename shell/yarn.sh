# Yarn
if test -f "$HOME/.yarn/bin"
  set -x PATH "$HOME/.yarn/bin" $PATH
end

if test -f "$HOME/.config/yarn/global/node_modules/.bin"
  set -x PATH "$HOME/.config/yarn/global/node_modules/.bin" $PATH
end
