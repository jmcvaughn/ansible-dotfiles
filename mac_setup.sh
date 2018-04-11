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
# gnu-time \
# gnu-which \
#brew install diffutils
#brew install gzip

# Install shell utilities
brew install \
  zsh \
  zsh-completions \
  zsh-syntax-highlighting \
  source-highlight \
  tree \
  tmux \

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
  kitty \
  mpv \
  slack \
  switchresx \

# Install virt-manager and virt-viewer
# xquartz is a dependency for both
# Potential issues:
# https://github.com/jeffreywildman/homebrew-virt-manager/issues/76
# https://github.com/jeffreywildman/homebrew-virt-manager/issues/81
brew tap jeffreywildman/homebrew-virt-manager \
  &&  brew cask install xquartz virt-manager virt-viewer

# Install sshfs
# osxfuse is a dependency
brew cask install osxfuse && brew install sshfs

# Create git/ directory
mkdir $HOME/git/

# Clone ansible-dotfiles from GitHub
git clone git@github.com:v0rn/ansible-dotfiles.git $HOME/git/ansible-dotfiles/

# Disable DS_Store file creation on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

# Disable DS_Store file creation on USB volumes
defaults write com.apple.desktopservices DSDontWriteUSBStores true

