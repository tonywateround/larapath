#!/bin/sh

curl https://raw.githubusercontent.com/tonywateround/larapath/main/larapath.sh --output larapath
mv larapath /usr/local/bin
chmod +x /usr/local/bin/larapath
echo "" > ~/.larapath
echo "$(tput setaf 2)✓ $(tput setaf 6)Larapath $(tput setaf 2)has been installed successfully.$(tput sgr 0)"
echo "You can run $ $(tput setaf 3)larapath --help$(tput sgr 0) for list of available commands"
rm install_larapath.sh
