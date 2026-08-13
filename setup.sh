#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cat << EndOfBanner                                                    
   _     _   ___ _ _                    _           
 _| |___| |_|  _|_| |___ ___    ___ ___| |_ _ _ ___ 
| . | . |  _|  _| | | -_|_ -|  |_ -| -_|  _| | | . |
|___|___|_| |_| |_|_|___|___|  |___|___|_| |___|  _|
                                               |_|  
EndOfBanner

set -euo pipefail

echo "→ Setting up global git ignore file"
set -x
git config --global core.excludesfile ${SCRIPT_DIR}/config/global-gitignore
{ set +x; } 2>/dev/null

echo "→ Symlinking Claude Code status line script into ~/.claude/"
set -x
mkdir -p "$HOME/.claude"
ln -sf ${SCRIPT_DIR}/config/claude/statusline.sh "$HOME/.claude/statusline.sh"
{ set +x; } 2>/dev/null

cat << 'EOF'

→ Claude Code status line
  The script is now symlinked at ~/.claude/statusline.sh.
  To activate it in Claude Code, add the following to ~/.claude/settings.json
  (merge into the existing JSON object):

    "statusLine": {
      "type": "command",
      "command": "sh $HOME/.claude/statusline.sh"
    }

  Tip: if your settings.json already references an absolute path like
  "sh /Users/<you>/.claude/statusline.sh", that keeps working too since the
  symlink lives at that location.
EOF
