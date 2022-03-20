if test -d "/opt/homebrew/opt/openjdk/bin"
  set -x PATH "/opt/homebrew/opt/openjdk/bin" $PATH
  set -gx CPPFLAGS "-I/opt/homebrew/opt/openjdk/include"
end
