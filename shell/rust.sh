# Rust for fish shell
if test -d "$HOME/.cargo/bin"
  set -x PATH "$HOME/.cargo/bin" $PATH
end

# Uses exa () instead of ls if available
if which exa >/dev/null 2>&1
  alias ls="exa"
end
