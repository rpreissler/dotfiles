#!/usr/bin/env bash

source ./utils.sh

e_header "Changing Settings"

# Change direction of scrolling
defaults write -g com.apple.swipescrolldirection -bool FALSE