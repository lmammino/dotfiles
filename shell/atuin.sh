# initializes atuin on a new session
if type -q atuin
  # binds ctrl+r and "?" (Atuin AI), keeps up-arrow unbound
  atuin init fish --disable-up-arrow | source
end
