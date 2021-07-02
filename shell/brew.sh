# exposes /usr/local/sbin where brew 
# installs some binaries (e.g. python)

if test -d "/usr/local/sbin"
  set -x PATH /usr/local/sbin $PATH
end

# exposes /opt/homebrew/bin where brew 
# installs some binaries (e.g. python)
if test -d "/opt/homebrew/bin"
  set -x PATH /opt/homebrew/bin $PATH
end

