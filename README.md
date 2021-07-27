## Larapath - Simple tool for fast Laravel directory access
I often directly use terminal for small modifications in my Laravel project and i was bored to cd'ing (to many time) in Controllers, go to Views, then Models and come back to root folder to migrate and so on.
So i've made this simple CLI tools for my own purpose and can be usefull for some people. 
This little tiny "project" is not maintened nor updated. 
You should use at your own risk.

### Install on Unix-based system
1. `$ curl https://raw.githubusercontent.com/tonywateround/larapath/main/install_larapath.sh --output install_larapath.sh `
2. `$ chmod +x install_larapath.sh && . ./install_larapath.sh`

### How to use  
1. Set your Laravel project path by running `$ larapath --path` or `$ larapath -p`
2. Then, see availables options by running `$ larapath --help` or `$ larapath -h`

### Uninstall on Unix-based system
1. `$ larapath --uninstall`
