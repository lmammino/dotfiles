# encrypt/decrypt helper functions

# encrypts/decrypts shortcuts using openssl (-pkbdf2 -base64)
#
# Examples:
#
#  enc SOMEFILE.txt -out SOMEFILE.enc
#  dec SOMEFILE.enc -out SOMEFILE.txt

if command -v openssl >/dev/null 2>&1; then
  # decrypts data from a file using openssl pkbdf2 base64. Usage: dec SOMEFILE.txt
  function dec() {
    openssl enc -d -pkbdf2 -base64 -in "$@"
  }

  # encrypts data from a file using openssl pkbdf2 base64. Usage: enc SOMEFILE.enc -out SOMEFILE.txt
  function enc() {
    openssl enc -e -pkbdf2 -base64 -in "$@"
  }
fi
