if ! command -v brew
then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

xcode-select --install

brew install firefox
brew install google-chrome
brew install slack
brew install zoom
brew install iterm2
brew install tmux
brew install pycharm
brew install dropbox
brew install rectangle
brew install ack
brew install diff-so-fancy
brew install tree
brew install wget
brew install yarn

defaults write NSGlobalDomain KeyRepeat -int 3

mkdir -p ~/Library/KeyBindings/
cp macfiles/DefaultKeyBinding.dict ~/Library/KeyBindings/
