# /bin/sh brew_update.sh
# Credit: https://luispuerto.github.io/luisspuerto.net-testing/blog/2018/03/22/updating-homebrew-r-and-python-pip-packages-ruby-gems-macos/

echo("This script runs update, upgrade, cleanup, prune, cu -ay, cask cleanup \n\n")

brew update && brew upgrade && brew cleanup && brew prune && brew cu -ay && brew cask cleanup

# brew update updates Homebrew itself and download the last version of the formulae
# brew upgrade updates the packages you have installed that have new formulae.
# brew cleanup cleans the cache of old versions of packages.
# brew prune clean the old symbolic links form `/usr/bin/`.
# brew cu -ay uses buo/homebrew-cask-upgrade to update casks. -ay flag is all and yes update all outdated apps.
# brew cask cleanup clean the old caches of the updated apps.
# If for some reason you don’t want to update an specific package in Homebrew, you can _pin _in to an specific version or the current version.
