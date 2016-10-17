export CLICOLOR=1;
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx;

function parse_git_branch {
  echo -n $(git branch --no-color 2>/dev/null | awk -v out=$1 '/^*/ { if(out=="") print $2; else print out}')
}

PS1='️\[\e[m\]\[\e[1;32m\]¬ \[\e[4;32m\]\u\[\e[m\] \[\e[0;37m\]\w\[\e[m\] \[\e[0;33m\]$(parse_git_branch)\[\e[m\]\[\e[1;32m\] \$\[\e[m\] \[\e[0;37m\] ';
clear;

#exports favourite editor
export EDITOR=vim;

#git
alias gith='git log --all --graph --pretty=format:"%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative';

#finder
alias finder='open -a finder';

#beep sound
alias beep='tput bel';

#encrypt/decrypt
alias dec='openssl enc -d -aes128 -base64 -pass';
alias enc='openssl enc -e -aes128 -base64 -pass';

#convert m4a files to mp3 in the current folder
alias m4a2mp3='for f in *.m4a; do ffmpeg -i "$f" -acodec libmp3lame -ab 320 "${f%.m4a}.mp3"; done';
alias flac2mp3='(for FILE in *.flac ; do ffmpeg -i "$FILE" -f mp3 -ab 192000 "`basename "$FILE" .flac`.mp3" || break; done)';

#vagrant for sbaam
alias vup='vagrant up';
alias vsu='vagrant suspend';
alias vss='vagrant ssh';

#alias
alias ll='ls -al';
