#encrypt/decrypt

# encrypts/decrypts shortcuts using openssl (-aes128 -base64)
#
# Examples:
#
#  enc SOMEFILE.txt -out SOMEFILE.enc
#  dec SOMEFILE.enc -out SOMEFILE.txt

if which openssl >/dev/null 2>&1 ; then
  alias dec='openssl enc -d -aes128 -base64 -in ';
  alias enc='openssl enc -e -aes128 -base64 -in ';
fi
