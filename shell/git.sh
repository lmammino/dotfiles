# Useful git shortcuts

if which git >/dev/null 2>&1
  function gl --description 'fancy git log'
    git log --all --graph --pretty=format:"%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative
  end

  function gs --description 'git status for the lazy'
    git status
  end

  function gp --description 'git push for the lazy'
    git pull
  end

  function gc --description 'git commit for the lazy'
    git commit
  end

  function gps --description 'git push for the lazy'
    git push
  end

  function gf --description 'git fetch --all for the lazy'
    git fetch --all
  end
end
