# Opens the current path in finder on MacOs

function finder --description 'Opens a given path in finder on MacOs'
  open -a finder $argv
end
