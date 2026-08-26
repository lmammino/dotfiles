# exports favourite editor

if type -q vim
  if type -q nvim
    function vim --description 'opens nvim with vim'    
      nvim
    end
  end
  set -x EDITOR vim
end
