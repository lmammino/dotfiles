#pygments cat
if which pygmentize >/dev/null 2>&1 ; then
  alias cat='pygmentize -O style=monokai -f console256 -g';
fi
