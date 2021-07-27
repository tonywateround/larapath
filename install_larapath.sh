#!/bin/sh

curl https://raw.githubusercontent.com/tonywateround/larapath/main/larapath_cli.sh --output larapath_cli
mv larapath_cli /usr/local/bin
chmod +x /usr/local/bin/larapath_cli
echo  "alias larapath='. /usr/local/bin/larapath_cli'" > ~/.larapath
echo "$(tput setaf 2)✓ $(tput setaf 6)Larapath $(tput setaf 2)has been installed successfully.$(tput sgr 0)"
echo "$(tput setaf 1)You add custom alias in your environment variable to bypass CD cmd restriction in bash script(tput sgr 0)"
echo "$(tput setaf 6)alias larapath='. /usr/local/bin/larapath_cli'$(tput sgr 0)"
echo "$(tput setaf 1) Then, $(tput setaf 6)$ source ~/.bashrc $(tput setaf 1) or reload terminal$(tput sgr 0)" 
echo "$(tput setaf 1)(You are free to use the environment file of your choice)$(tput sgr 0)\n"
echo "$(tput setaf 1) After sourcing, you can run $(tput setaf 6)larapath --help$(tput setaf 1) for list of available commands\n"
