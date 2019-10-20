# theFuck command line fixer
if which thefuck >/dev/null 2>&1 ; then
  eval $(thefuck --alias);
fi
