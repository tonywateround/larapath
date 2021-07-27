#!/bin/sh

curl https://raw.githubusercontent.com/tonywateround/larapath/main/larapath_dot.sh --output larapath_dot
mv larapath_dot /usr/local/bin
chmod +x /usr/local/bin/larapath_dot
echo  "alias larapath='. /usr/local/bin/larapath_dot'" > ~/.larapath
source ~/.larapath
echo "$(tput setaf 2)✓ $(tput setaf 6)Larapath $(tput setaf 2)has been installed successfully.$(tput sgr 0)"
echo "$(tput setaf 2) You can run $(tput setaf 6)larapath --help$(tput setaf 2) for list of available commands"
