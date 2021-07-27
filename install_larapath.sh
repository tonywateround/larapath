#!/bin/sh

curl https://raw.githubusercontent.com/tonywateround/larapath/main/larapath_cli.sh --output larapath_cli
mv larapath_cli /usr/local/bin
chmod +x /usr/local/bin/larapath_cli
echo  "alias larapath='. /usr/local/bin/larapath_cli'" > ~/.larapath
echo "$(tput setaf 2)✓ $(tput setaf 6)Larapath $(tput setaf 2)has been installed successfully.$(tput sgr 0)"
echo "$(tput setaf 1)Add this $(tput setaf 6)alias$(tput setaf 1) in your env to bypass CD restriction in bash script$(tput sgr 0)"
echo "$(tput setaf 6)alias larapath='. /usr/local/bin/larapath_cli'$(tput sgr 0)"
echo "$(tput setaf 1)Then, source your env, eg: $(tput setaf 2)$ source ~/.bashrc $(tput setaf 1) or reload terminal$(tput sgr 0)" 
echo "$(tput setaf 1) After sourcing or reload, run $(tput setaf 2)larapath -h$(tput setaf 1) for list of commands\n"
