# Homebrew install script for OSX
# to execute: save and 'chmod +x ./brew-install-script.sh' then '.brew-install-script.sh'

echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing programming languages"
brew install node
brew cask install java
brew install haskell
brew install haskell-stack
brew install node
brew install r

echo "Installing devtools"
brew install vim
brew install git
brew cask install iterm2

echo "Installing communication apps"
brew cask install slack
brew cask install skype

echo "Installing browsers"
brew cask install google-chrome


