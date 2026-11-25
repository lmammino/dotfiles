# Tailscale CLI (macOS app bundle)

set -l tailscale_bin "/Applications/Tailscale.app/Contents/MacOS/Tailscale"
if test -x "$tailscale_bin"
    alias tailscale="$tailscale_bin"
end
