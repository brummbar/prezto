#
# Adds local Composer bin folder into PATH.
#
# Authors: Francesco Sardara
#

# Prepend Composer user bin folder to PATH.
if [[ -d "$HOME/.composer/vendor/bin" ]]; then
  path=("$HOME/.composer/vendor/bin" $path)

# Some Linux distro might use a different folder for Composer.
elif [[ -d "$HOME/.config/composer/vendor/bin" ]]; then
  path=("$HOME/.config/composer/vendor/bin" $path)
fi
