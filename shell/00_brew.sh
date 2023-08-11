# exposes /usr/local/sbin
if test -d "/usr/local/sbin"
  set -x PATH /usr/local/sbin $PATH
end

# exposes /opt/homebrew/bin
if test -d "/opt/homebrew/bin"
  set -x PATH /opt/homebrew/bin $PATH
end

# exposes /opt/homebrew/sbin
if test -d "/opt/homebrew/sbin"
  set -x PATH /opt/homebrew/sbin $PATH
end

