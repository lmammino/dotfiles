# exposes /usr/local/sbin where brew 
# installs some binaries (e.g. python)

if test -d "/usr/local/sbin"
  set -x PATH /usr/local/sbin $PATH
end
