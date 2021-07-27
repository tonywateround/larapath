#!/bin/sh
source ~/.larapath
if [[ $LARAPATH_DIR = "" ]]
then

echo "Please type the full path of your $(tput setaf 6)Laravel $(tput sgr 0)app"
echo "Example: $(tput setaf 6)\$HOME/desktop/myLaravelApp $(tput sgr 0)"
echo "Press $(tput setaf 6)Enter... $(tput sgr 0)to use current directory\n"
read -r larapath_prompt


if [ ${#larapath_prompt} -eq 0 ]; then
  larapath_prompt=$(pwd)
fi
echo "$(tput setaf 2)✓ Larapath is now set to Laravel path $(tput setaf 6)$larapath_prompt $(tput sgr 0)"
echo  "export LARAPATH_DIR=$larapath_prompt" > ~/.larapath
source ~/.larapath

else
if [[ $1 = '--controllers' ]] || [[ $1 = '-ct' ]]
then


function myprog() {
   cd $LARAPATH_DIR/app/Http/Controllers
}

myprog

elif [[ $1 = '--root' ]] || [[ $1 = '-r' ]]
then

function myprog() {
   cd $LARAPATH_DIR
}

myprog
elif [[ $1 = '--views' ]] || [[ $1 = '-vw' ]]
then

cd "$LARAPATH_DIR/resources/views"

elif [[ $1 = '--routes' ]] || [[ $1 = '-rt' ]]
then

cd "$LARAPATH_DIR/routes"

elif [[ $1 = '--path' ]] || [[ $1 = '-p' ]]
then

echo "Please type the full path of your $(tput setaf 6)Laravel $(tput sgr 0)app"
echo "Example: $(tput setaf 6)\$HOME/desktop/myLaravelApp $(tput sgr 0)"
echo "Press $(tput setaf 6)Enter... $(tput sgr 0)to use current directory\n"
echo "Currently set to: $(tput setaf 2) $LARAPATH_DIR $(tput sgr 0)"
read -r larapath_prompt


if [ ${#larapath_prompt} -eq 0 ]; then
  larapath_prompt=$(pwd)
fi

if [[ $larapath_prompt = '' ]]
then
echo "You should set a valid Laravel project path"
read -r larapath_prompt
else


echo "$(tput setaf 2)✓ Larapath is now set to Laravel path $(tput setaf 6)$larapath_prompt $(tput sgr 0)"
echo "export LARAPATH_DIR=$larapath_prompt" > ~/.larapath
source ~/.larapath
fi

elif [[ $1 = '--help' ]] || [[ $1 = '-h' ]]
then

echo ""
echo "$(tput setaf 6)LaraPath - Fast CLI access to Laravel folder$(tput sgr 0)"
echo "Current project path: $(tput setaf 2)" $LARAPATH_DIR
echo "$(tput sgr 0)"
echo "Usage: larapath $(tput setaf 2)[options]$(tput sgr 0)\n"
echo "$(tput setaf 2)--root            -r        $(tput sgr 0)Access to root project folder"
echo "$(tput setaf 2)--controllers     -ct       $(tput sgr 0)Access to Controllers folder"
echo "$(tput setaf 2)--views           -vw       $(tput sgr 0)Access to Views folder"
echo "$(tput setaf 2)--routes          -rt       $(tput sgr 0)Access to Routes folder"
echo "$(tput setaf 2)--path            -p        $(tput sgr 0)Change LaraPath Laravel folder"

else 
echo "Bad option. Execute $(tput setaf 6)larapath --help$(tput sgr 0) for list of available options"
fi
fi
