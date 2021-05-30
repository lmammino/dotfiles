# exports favourite editor

if which vim >/dev/null 2>&1
  if which nvim >/dev/null 2>&1
    function vim --description 'opens nvim with vim'    
      nvim
    end
  end
  set -x EDITOR vim
end
