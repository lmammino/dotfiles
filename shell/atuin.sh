# initializes atuin on a new session
if which atuin >/dev/null 2>&1
  # disable autobinding
  set -gx ATUIN_NOBIND "true"
  atuin init fish | source

  # enables ctr+r search
  bind \cr _atuin_search
  bind -M insert \cr _atuin_search
end
