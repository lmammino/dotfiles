#!/bin/sh
# Claude Code status line: model, cwd, git branch, context window usage.
# Colorized with standard 8/16 ANSI codes; every color/bold run is reset
# immediately after so segments never bleed into one another.
input=$(cat)

BOLD='\033[1m'
DIM='\033[2m'
RESET='\033[0m'
CYAN='\033[36m'
GREEN='\033[32m'
YELLOW='\033[33m'
RED='\033[31m'
MAGENTA='\033[35m'

model=$(printf '%s' "$input" | jq -r '.model.display_name // "Claude"')
cwd=$(printf '%s' "$input" | jq -r '.workspace.current_dir // .cwd // "."')
dir=$(basename "$cwd")

effort=$(printf '%s' "$input" | jq -r '.effort.level // empty')
if [ -z "$effort" ] && [ -f "$HOME/.claude/settings.json" ]; then
  effort=$(jq -r '.effortLevel // empty' "$HOME/.claude/settings.json" 2>/dev/null)
fi
# NOTE: the settings.json fallback path uses $HOME so the script is portable
# across machines. $HOME/.claude/statusline.sh is expected to symlink to
# this file (see setup.sh).

model_seg=$(printf "${BOLD}%s${RESET}" "$model")
if [ -n "$effort" ]; then
  model_seg=$(printf "%s ${DIM}(${RESET}${MAGENTA}%s${RESET}${DIM})${RESET}" "$model_seg" "$effort")
fi

dir_seg=$(printf "${CYAN}%s${RESET}" "$dir")

branch=""
if git -C "$cwd" --no-optional-locks rev-parse --git-dir >/dev/null 2>&1; then
  branch=$(git -C "$cwd" --no-optional-locks branch --show-current 2>/dev/null)
fi
if [ -n "$branch" ]; then
  dir_seg=$(printf "%s ${DIM}(${RESET}${GREEN}%s${RESET}${DIM})${RESET}" "$dir_seg" "$branch")
fi

used=$(printf '%s' "$input" | jq -r '.context_window.used_percentage // empty')
ctx_seg=""
if [ -n "$used" ]; then
  rounded=$(printf '%.0f' "$used")
  if [ "$rounded" -ge 80 ]; then
    ctx_color="${BOLD}${RED}"
  elif [ "$rounded" -ge 50 ]; then
    ctx_color="$YELLOW"
  else
    ctx_color="$GREEN"
  fi
  ctx_seg=$(printf "${ctx_color}CTX %s%%${RESET}" "$rounded")
fi

sep=$(printf "${DIM} | ${RESET}")

out="${model_seg}${sep}${dir_seg}"
[ -n "$ctx_seg" ] && out="${out}${sep}${ctx_seg}"

printf '%s\n' "$out"
