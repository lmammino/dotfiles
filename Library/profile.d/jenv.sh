# jenv (https://www.jenv.be/)
if which jenv >/dev/null 2>&1 ; then
  if [ -d "$HOME/.jenv" ]; then
    eval "$(jenv init -)"
  fi
fi
