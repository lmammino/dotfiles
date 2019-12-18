if which starship >/dev/null 2>&1 ; then
  eval "$(starship init bash)";
else
  EMOJIS=('🌄' '☀️' '☕️' '🍳' '🍞' '🐓' '🐔' '🌲' '🌳' '🌴' '🌵' '🌷' '🌺' '🌸' '🌹' '🌻' '🌼' '💐' '🌾' '🌿' '🍀' '🍁' '🍂' '🍃' '🍄' '☀️' '⛅️' '☁️' '☔️' '🌈' '🌊' '🗻' '🌍' '🌞' '💻' '🚽' '📚' '✂️' '🔪' '🍔' '🍕' '🍖' '🍗' '🍘' '🍙' '🍚' '🍛' '🍜' '🍝' '🍞' '🍟' '🍣' '🍤' '🍥' '🍱' '🍲' '🍳' '🍴' '🍏' '🍇' '🍉' '🍊' '🍌' '🍍' '🍑' '🍒' '🍓' '🍡' '🍢' '🍦' '🍧' '🍨' '🍩' '🍪' '🍫' '🍬' '🍭' '🍮' '🍰' '🍷' '🍸' '🍶' '🍹' '🍺' '🍻' '😴' '🌠' '🌑' '🌒' '🌔' '🌖' '🌘' '🌚' '🌝' '🌛' '🌜' '⛺️' '🌃' '🌉' '🌌');

  RANDOM_EMOJI() {
    SELECTED_EMOJI=${EMOJIS[$RANDOM % ${#EMOJIS[@]}]};
    echo $SELECTED_EMOJI;
  }

  export CLICOLOR=1;
  export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx;

  function parse_git_branch {
    echo -n $(git branch --no-color 2>/dev/null | awk -v out=$1 '/^*/ { if(out=="") print $2; else print out}')
  }

  PS1='\n$(RANDOM_EMOJI)  \[\e[m\]\[\e[1;32m\]\[\e[4;32m\]\u\[\e[m\] \[\e[0;37m\]\w\[\e[m\] \[\e[0;33m\]$(parse_git_branch)\[\e[m\]\[\e[1;32m\]\n  \[\e[m\] \[\e[0;37m\]';
fi
