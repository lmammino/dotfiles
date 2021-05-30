# clears MacOS iTerm scrollback history

function clearf --description 'clears MacOS iTerm scrollback history'
  printf '\e]50;ClearScrollback\a'
end
