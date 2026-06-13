# PHP

# Composer global installed binaries
if test -d "$HOME/.config/composer/vendor/bin"
  and not contains "$HOME/.config/composer/vendor/bin" $PATH
    set -x PATH "$HOME/.config/composer/vendor/bin" $PATH
end
