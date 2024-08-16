# Enable support for zfz with fish

if which zfz >/dev/null 2>&1
    fzf --fish | source
end
