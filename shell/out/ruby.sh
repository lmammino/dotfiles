# Ruby

# RVM support
# Ruby enVironment Manager
function rvm() {
  # run RVM and capture the resulting environment
  local env_file=$(mktemp -t rvm.zsh.XXXXXXXXXX)
  # This finds where RVM's root directory is and sources scripts/rvm from within it.  Then loads RVM in a clean environment and dumps the environment variables it generates out for us to use.
  bash -c 'PATH=$GEM_HOME/bin:$PATH;RVMA=$(which rvm);RVMB=$(whereis rvm | sed "s/rvm://");source $(if test $RVMA;then echo $RVMA | sed "s/\/bin\//\/scripts\//";elif test $RVMB; then echo $RVMB | sed "s/rvm/rvm\/scripts\/rvm/"; else echo ~/.rvm/scripts/rvm; fi); rvm "$@"; status=$?; env > "$0"; exit $status' "$env_file" "$@"

  # apply rvm_* and *PATH variables from the captured environment
  if [ $? -eq 0 ]; then
    eval $(grep -E '^rvm|^PATH|^GEM_PATH|^GEM_HOME' "$env_file" | grep -v '_clr=' | sed '/^[^=]*PATH/s/:/" "/g; s/^/export /; s/=/="/; s/$/"/; s/(//; s/)//')
    # needed for GEM_PATH
    export GEM_PATH=$(echo "$GEM_PATH" | sed 's/ /:/g')
  fi

  # clean up
  rm -f "$env_file"
}

# Source a .rvmrc file in a directory after changing to it, if it exists.
# To disable this feature, set rvm_project_rvmrc=0 in $HOME/.rvmrc
function chpwd() {
  if [ "$rvm_project_rvmrc" != "0" ]; then
    local cwd="$PWD"
    while true; do
      if [ "$cwd" = "" ] || [ "$cwd" = "$HOME" ] || [ "$cwd" = "/" ]; then
        if [ "$rvm_project_rvmrc_default" = "1" ]; then
          rvm default >/dev/null 2>&1
        fi
        break
      else
        if [ -e "$cwd/.rvmrc" ] || [ -e "$cwd/.ruby-version" ] || [ -e "$cwd/.ruby-gemset" ] || [ -e "$cwd/Gemfile" ]; then
          eval "rvm reload" > /dev/null
          eval "rvm rvmrc load" >/dev/null
          break
        else
          cwd=$(dirname "$cwd")
        fi
      fi
    done
  fi
}

if [ -d "$HOME/.rvm" ]; then
  rvm default
fi
