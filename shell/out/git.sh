# Useful git shortcuts

if command -v git >/dev/null 2>&1; then
  # fancy git log
  function gl() {
    git log --all --graph --pretty=format:"%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative
  }

  # git status for the lazy
  function gs() {
    git status
  }

  # git push for the lazy
  function gp() {
    git pull
  }

  # git commit for the lazy
  function gc() {
    git commit
  }

  # git push for the lazy
  function gps() {
    git push
  }

  # git fetch --all for the lazy
  function gf() {
    git fetch --all
  }
fi
