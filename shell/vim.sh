# exports favourite editor

if command -v vim >/dev/null 2>&1; then
  if command -v nvim >/dev/null 2>&1; then
    # opens nvim with vim
    function vim() {
      nvim "$@"
    }
  fi
  # Not ready for this now
  # export EDITOR=vim
fi
