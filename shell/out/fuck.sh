# theFuck command line fixer

if command -v thefuck >/dev/null 2>&1; then
  eval "$(thefuck --alias)"
fi
