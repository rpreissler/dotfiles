#!/usr/bin/env bash

# Make the user-relative bin folder to install things to
mkdir -p ~/bin

source ./install/brew.sh
source ./install/brew-utilities.sh
source ./install/brew-cask.sh
source ./install/ruby.sh
source ./install/node.sh
source ./install/npm.sh
source ./install/fonts.sh

for app in "Activity Monitor" "cfprefsd" \
  "Dock" "Finder" "Google Chrome" "Messages" \
  "Spectacle" "SystemUIServer"; do
  killall "${app}" &> /dev/null
done
