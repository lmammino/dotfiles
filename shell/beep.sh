# MacOS beep sound for fish shell

function beep --description 'plays a beep sound and triggers a system notification if the shell is not focused'
  tput bel
end
