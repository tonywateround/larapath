#!/bin/bash

curl https://github.com/tonywateround/larapath/raw/main/larapath --output larapath
mv larapath /usr/local/bin
chmod +x /usr/local/bin/larapath
echo "Larapath has been installed successfully."
echo "You can run $larapath -h or --help for list of available commands"
