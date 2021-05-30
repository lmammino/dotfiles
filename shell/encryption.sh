# encrypt/decrypt helper functions

# encrypts/decrypts shortcuts using openssl (-aes128 -base64)
#
# Examples:
#
#  enc SOMEFILE.txt -out SOMEFILE.enc
#  dec SOMEFILE.enc -out SOMEFILE.txt

if which openssl >/dev/null 2>&1
  function dec --description 'decrypts data from a file using openssl aes128 base64. Usage: enc SOMEFILE.txt -out SOMEFILE.enc'
    openssl enc -d -aes128 -base64 -in $argv
  end

  function enc --description 'encrypts data from a file using openssl aes128 base64. Usage: dec SOMEFILE.enc -out SOMEFILE.txt'
    openssl enc -e -aes128 -base64 -in $argv
  end
end
