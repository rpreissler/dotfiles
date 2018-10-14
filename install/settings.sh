#!/usr/bin/env bash

source ./utils.sh

e_header "Changing Mac Settings"

# Show hidden files/directories
echo " Show hidden files/directories"
defaults write com.apple.finder AppleShowAllFiles YES

# Disable natural scrolling
echo " Disable natural scrolling"
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# autohide dock
echo " Set dock to autohide"
defaults write com.apple.dock autohide -bool true && defaults write com.apple.dock autohide-delay -float 0 && killall Dock

# disable annoying backswipe navigation in Chrome
echo " Disable annoying backswipe navigation in Chrome"
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false
defaults write com.google.Chrome.canary AppleEnableSwipeNavigateWithScrolls -bool false
defaults write com.google.Chrome AppleEnableMouseSwipeNavigateWithScrolls -bool false
defaults write com.google.Chrome.canary AppleEnableMouseSwipeNavigateWithScrolls -bool false


# Trackpad: map bottom right corner to right-click
echo " Trackpad: map bottom right corner to right-click"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true

# Prevent Time Machine from prompting to use new hard drives as backup volume
echo " Prevent Time Machine from prompting to use new hard drives as backup volume"
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Prevent Photos from opening automatically when devices are plugged in
echo " Prevent Photos from opening automatically when devices are plugged in"
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

# Disable the "Are you sure you want to open this application?" dialog
echo " Disable the 'Are you sure you want to open this application?' dialog"
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Require password immediately after sleep or screen saver begins
echo " Require password immediately after sleep or screen saver begins"
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Default to list view in Finder windows (others: `icnv`, `clmv`, `Flwv`)
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Secondary click:
# Possible values: OneButton, TwoButton, TwoButtonSwapped
echo " Set secondary mouse click to OneButton"
defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseButtonMode -string OneButton

# Avoid creating .DS_Store files on network volumes
echo " Avoid creating .DS_Store files on network volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

echo " Hot corners"
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# Top left screen corner → Mission Control
#defaults write com.apple.dock wvous-tl-corner -int 2
#defaults write com.apple.dock wvous-tl-modifier -int 0
# Top right screen corner → Start screen saver
echo " Top right screen corner → Start screen saver"
defaults write com.apple.dock wvous-tr-corner -int 5
defaults write com.apple.dock wvous-tr-modifier -int 0
# Top right screen corner → Desktop
#defaults write com.apple.dock wvous-br-corner -int 4
#defaults write com.apple.dock wvous-br-modifier -int 0

echo "Done.  Restart computer to see all changes"