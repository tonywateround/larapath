#!/bin/bash

curl https://raw.githubusercontent.com/tonywateround/larapath/main/larapath --output larapath
mv larapath /usr/local/bin
chmod +x /usr/local/bin/larapath
echo "" > ~/.larapath
echo "Larapath has been installed successfully."
echo "You can run $larapath -h or --help for list of available commands"
rm install_larapath.sh
