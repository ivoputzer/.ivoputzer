#!/usr/bin/env sh

ruby -e $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)

brew doctor
brew tap caskroom/fonts

brew install trash jq tree tmate wget fish tig hub htop the_silver_searcher
brew cask install font-source-code-pro

wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
