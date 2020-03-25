# jenv (https://www.jenv.be/)
if which jenv >/dev/null 2>&1 ; then
  if [ -d "$HOME/.jenv/bin" ]; then
    export PATH="$HOME/.jenv/bin:$PATH"
    eval "$(jenv init -)"
  fi
fi
