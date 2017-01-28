#!/usr/bin/env bash

source ./utils.sh

e_header "Installing brew cask apps"

e_arrow "Installing cask and tapping"

brew tap caskroom/versions

e_arrow "Installing cask apps"

apps=(
  1password
  adobe-creative-cloud
  alfred
  appcleaner
  bartender
  caffeine
  dropbox
  evernote
  firefox
  google-chrome
  iterm2
  reaper
  slack
  spotify
  sublime-text
)

brew cask install --appdir="~/Applications" ${apps[@]}
brew cask cleanup

e_arrow "Setting Google Chrome as the default browser"

open -a "Google Chrome" --args --make-default-browser

e_success "Done!"
