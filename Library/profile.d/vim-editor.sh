#exports favourite editor
if which vim >/dev/null 2>&1 ; then
  if which nvim >/dev/null 2>&1 ; then
    alias vim='nvim';
  fi
  export EDITOR=vim;
fi
