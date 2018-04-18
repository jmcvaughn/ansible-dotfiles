#!/bin/bash

# Set up proxies
if [ "$1" == "intel" ]; then
	export https_proxy="http://proxy-chain.intel.com:912"
	export http_proxy=$https_proxy
fi

# Install Homebrew
/usr/bin/ruby -e "$(
	curl -fsSL \
	https://raw.githubusercontent.com/Homebrew/install/master/install
)"

# Disable Homebrew analytics
export HOMEBREW_NO_ANALYTICS=1

# Install GNU utilities
brew install gmp
brew install coreutils --with-gmp
brew install --with-default-names \
  findutils \
  grep \
  gnu-sed \
  gnu-tar \

# Install shell utilities
brew install \
  zsh \
  zsh-completions \
  zsh-syntax-highlighting \
  source-highlight \
  tree \
  tmux \

# Add Homebrew zsh to /etc/shells
sudo cp /etc/shells{,.bak}
echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells

# Change user default shell to Homebrew zsh
chsh -s /usr/local/bin/zsh

# Install CLI applications that don't have dependencies
brew install \
  ansible \
  aria2 \
  cask \
  htop \
  neovim \
  pandoc \
  picocom \
  sipcalc \
  wget \

# Install rmtree
brew tap beeftornado/rmtree

# Install Homebrew-Cask
brew tap caskroom/cask

# Install Source Code Pro
brew tap caskroom/fonts && brew cask install font-source-code-pro

# Install GUI applications
brew cask install \
  displaycal \
  firefox \
  flash-npapi \
  gotomeeting \
  insomniaX \
  mpv \
  slack \
  switchresx \

# Install kitty
# ImageMagick required for viewing images using 'kitty icat'
brew install imagemagick \
  && brew cask install kitty

# Install virt-manager and virt-viewer
# xquartz is a dependency for both
# Potential issues:
# https://github.com/jeffreywildman/homebrew-virt-manager/issues/76
# https://github.com/jeffreywildman/homebrew-virt-manager/issues/81
brew cask install xquartz \
  && brew tap jeffreywildman/homebrew-virt-manager \
  && brew install virt-manager virt-viewer

# Install sshfs
# osxfuse is a dependency
brew cask install osxfuse && brew install sshfs

# Disable DS_Store file creation on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

# Disable DS_Store file creation on USB volumes
defaults write com.apple.desktopservices DSDontWriteUSBStores true

