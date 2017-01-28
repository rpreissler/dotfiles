#!/usr/bin/env bash

source ./utils.sh

e_header "Installing npm modules"

packages=(
  create-react-app
  csslint
  eslint
  grunt-cli
  gulp-cli
  hicat
  html-minifier
  init-module
  less
  nodemon
  npm-check
  npm-release
  sassysass
  speed-test
  svgo
  tv-schedule
  uglifycss
  uglify-js
)

npm install -g ${packages[@]}
npm config set save true
npm set init-module $(init-module --path)

e_success "Done!"
