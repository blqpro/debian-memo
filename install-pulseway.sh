#!/bin/bash$
#Install pulseway 

read -r -p "Are you sure you want to install pulseway  ?? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        mkdir download
        cd download
        sudo wget http://www.pulseway.com/download/pulseway_x64.deb
        sudo dpkg -i pulseway_x64.deb
        sudo pulseway-registration
        ;;
    *)
        echo If you want to install pulseway lunch this script again and say Y / Yes
        ;;
esac

