# converts all m4a or flac files in the current folder into mp3 using ffmpeg

if command -v ffmpeg >/dev/null 2>&1; then
  # converts all m4a files in the current folder to mp3 using ffmpeg
  function m4a2mp3() {
    for f in *.m4a; do
      ffmpeg -i "$f" -acodec libmp3lame -ab 320 "$(basename "$f" .m4a).mp3"
    done
  }

  # converts all flac files in the current folder to mp3 using ffmpeg
  function flac2mp3() {
    for f in *.flac; do
      ffmpeg -i "$f" -f mp3 -ab 192000 "$(basename "$f" .flac).mp3"
    done
  }
fi
