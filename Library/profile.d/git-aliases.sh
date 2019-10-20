#git aliases
if which git >/dev/null 2>&1 ; then
  alias gith='git log --all --graph --pretty=format:"%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative';
  alias gits='git status';
  alias gitc='git commit';
  alias gitp='git push';
fi
