# Enable support for fzf with zsh

if command -v fzf >/dev/null 2>&1; then
    [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
fi
