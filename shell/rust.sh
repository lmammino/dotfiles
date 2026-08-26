# Rust for fish shell
if test -d "$HOME/.cargo/bin"
  set -x PATH "$HOME/.cargo/bin" $PATH
end

# Uses exa () instead of ls if available
if type -q exa
  alias ls="exa"
end
