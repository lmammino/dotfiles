# Rust for zsh
if [ -d "$HOME/.cargo/bin" ]; then
  export PATH="$HOME/.cargo/bin:$PATH"
fi

# Uses exa instead of ls if available
# Exa is unmantained and not used anymore
# possible alternatives: exa fork, lsd
# if command -v exa >/dev/null 2>&1; then
#   alias ls="exa"
# fi
