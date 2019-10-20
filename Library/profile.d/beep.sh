#beep sound
if which tput >/dev/null 2>&1 ; then
  alias beep='tput bel';
fi
