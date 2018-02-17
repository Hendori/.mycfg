# Homebrew update script for OSX
# to execute: save and 'chmod +x ./brew-upgrade-script.sh' then '.brew-upgrade-script.sh'

echo "Upgrading brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Upgrading programming languages"
brew upgrade node
brew cask upgrade java
brew upgrade haskell
brew upgrade haskell-stack
brew upgrade node
brew upgrade r

echo "Upgrading devtools"
brew upgrade vim
brew upgrade git
brew cask upgrade iterm2

echo "Upgrading communication apps"
brew cask upgrade slack
brew cask upgrade skype

echo "Upgrading browsers"
brew cask upgrade google-chrome


