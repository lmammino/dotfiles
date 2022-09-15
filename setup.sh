#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cat << EndOfBanner                                                    
   _     _   ___ _ _                    _           
 _| |___| |_|  _|_| |___ ___    ___ ___| |_ _ _ ___ 
| . | . |  _|  _| | | -_|_ -|  |_ -| -_|  _| | | . |
|___|___|_| |_| |_|_|___|___|  |___|___|_| |___|  _|
                                               |_|  
EndOfBanner

set -euo pipefail

echo "→ Setting up global git ignore file"
set -x
git config --global core.excludesfile ${SCRIPT_DIR}/config/global-gitignore
{ set +x; } 2>/dev/null
