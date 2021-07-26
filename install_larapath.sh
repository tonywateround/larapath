#!bin/bash


curl -L https://github.com/tonywateround/larapath/raw/main/larapath
mv larapath /usr/local/bin
chmod +x /usr/local/bin/larapath
echo "Larapath has been installed successfully."
echo "You can run $larapath -h or --help for list of available commands"
