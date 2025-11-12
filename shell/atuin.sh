# initializes atuin on a new session
if [ -f ~/.atuin/bin/env ]; then
  . ~/.atuin/bin/env
  # export ATUIN_NOBIND="true"
  eval "$(atuin init zsh)"
fi
