#!/bin/bash

# Check if Homebrew is installed

if [ ! -x /usr/local/bin/brew ]; then

    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

fi

# install ice bar manager
brew install --cask jordanbaird-ice

# install rectangle tiling window manager
brew install --cask rectangle

# install Spotify customizer
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh

# clone theme repo

git clone --depth=1 https://github.com/spicetify/spicetify-themes.git 

# move themes to spicetify directory

cd spicetify-themes
cp -r * ~/.config/spicetify/Themes

# apply Cherry theme

spicetify config color_scheme Cherry
spicetify apply