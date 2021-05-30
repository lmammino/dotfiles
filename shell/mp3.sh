# converts all m4a or flac files in the current folder into mp3 using ffmpeg

if which ffmpeg >/dev/null 2>&1
  function m4a2mp3 --description 'converts all m4a files in the current folder to mp3 using ffmpeg'
    for f in *.m4a
      ffmpeg -i "$f" -acodec libmp3lame -ab 320 (basename "$f" .m4a)".mp3"
    end
  end

  function flac2mp3 --description 'converts all flac files in the current folder to mp3 using ffmpeg'
    for f in *.flac
      ffmpeg -i "$f" -f mp3 -ab 192000 (basename "$f" .flac)".mp3"
    end
  end
end
