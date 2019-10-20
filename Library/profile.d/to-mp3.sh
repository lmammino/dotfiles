# converts all m4a or flac files in the current folder into mp3 using ffmpeg
if which ffmpeg >/dev/null 2>&1 ; then
 alias m4a2mp3='for f in *.m4a; do ffmpeg -i "$f" -acodec libmp3lame -ab 320 "${f%.m4a}.mp3"; done';
 alias flac2mp3='(for FILE in *.flac ; do ffmpeg -i "$FILE" -f mp3 -ab 192000 "`basename "$FILE" .flac`.mp3" || break; done)';
fi
