#!/bin/bash

# Set binary paths
$brew_path="/usr/local/bin/brew"
$grep_path="/usr/local/bin/grep"

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
"$brew_path" install gmp
"$brew_path" install coreutils --with-gmp
"$brew_path" install gnupg --with-gpg-zip --with-readline
"$brew_path" install --with-default-names \
  findutils \
  grep \
  gnu-sed \
  gnu-tar \

# Install pinentry-mac (for GnuPG)
"$brew_path" install pinentry-mac

# Install shell utilities
"$brew_path" install \
  zsh \
  zsh-completions \
  zsh-syntax-highlighting \
  source-highlight \
  tree \
  tmux \

# Install Homebrew OpenSSH
"$brew_path" install openssh --with-ldns

# Add Homebrew zsh path to /etc/shells
if ! "$grep_path" -E '^/usr/local/bin/zsh$' /etc/shells &> /dev/null; then
    echo "/usr/local/bin/zsh" \
      | sudo /usr/local/opt/coreutils/libexec/gnubin/tee -a /etc/shells
fi

# Change user default shell to Homebrew zsh
/usr/bin/chsh -s /usr/local/bin/zsh

# Install CLI applications that don't have Cask dependencies
"$brew_path" install \
  ansible \
  aria2 \
  cask \
  google-chrome \
  htop \
  neovim \
  pandoc \
  picocom \
  sipcalc \
  wget \

# Install rmtree
"$brew_path" tap beeftornado/rmtree

# Install Homebrew-Cask
"$brew_path" tap caskroom/cask

# Install Source Code Pro
"$brew_path" tap caskroom/fonts \
  && "$brew_path" cask install font-source-code-pro

# Install GUI applications
"$brew_path" cask install \
  displaycal \
  firefox \
  flash-npapi \
  gotomeeting \
  insomniaX \
  mpv \
  slack \
  switchresx \
  whichspace \

# Install kitty
#   ImageMagick required for viewing images using 'kitty icat'
"$brew_path" install imagemagick \
  && "$brew_path" cask install kitty

# Fix permissions on ~/Library/LaunchAgents/
sudo chown -R $UID:$GID $HOME/Library/LaunchAgents/

# Install chunkwm and skhd
#   After installation, follow these steps:
#     https://github.com/crisidev/homebrew-chunkwm
#     https://github.com/koekeishiya/skhd
"$brew_path" tap crisidev/homebrew-chunkwm \
  && "$brew_path" install --HEAD chunkwm
"$brew_path" install koekeishiya/formulae/skhd
#   Install qes (Quartz Event Synthesizer) to send keypresses
"$brew_path" install chipsenkbeil/personal/qes
#   Install cev to grab keycodes for configuration
"$brew_path" install koekeishiya/formulae/cev

# Install virt-manager and virt-viewer
#   xquartz is a dependency for both
#     Potential issues:
#       https://github.com/jeffreywildman/homebrew-virt-manager/issues/76
#       https://github.com/jeffreywildman/homebrew-virt-manager/issues/81
"$brew_path" cask install xquartz \
  && "$brew_path" tap jeffreywildman/homebrew-virt-manager \
  && "$brew_path" install virt-manager virt-viewer

# Install sshfs
#   osxfuse is a dependency
"$brew_path" cask install osxfuse && "$brew_path" install sshfs

# Disable DS_Store file creation on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

# Disable DS_Store file creation on USB volumes
defaults write com.apple.desktopservices DSDontWriteUSBStores true

