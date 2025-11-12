# Enable support for yazi file manager

if command -v yazi >/dev/null 2>&1; then
    function yy() {
        local tmp=$(mktemp -t "yazi-cwd.XXXXXX")
        yazi "$@" --cwd-file="$tmp"
        local cwd=$(cat -- "$tmp")
        if [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
            cd -- "$cwd"
        fi
        rm -f -- "$tmp"
    }
fi
