# initializes atuin on a new session
if which atuin >/dev/null 2>&1
  atuin init fish | source
end
