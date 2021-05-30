# Deno runtime
if test -d "$HOME/.deno"
  set -x DENO_INSTALL "$HOME/.deno"
  set -x PATH "$DENO_INSTALL/bin" $PATH
end
