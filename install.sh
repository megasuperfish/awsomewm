#!/usr/bin/env bash
set -euo pipefail

installPrograms() {

    clear;

    echo -e "Select which distro you are using:"
    echo -e "\e[91m{1}      \e[32mFedora    (dnf)"
    echo -e "\e[91m{2}      \e[32mDebian    (apt)"
    echo -e "\e[91m{3}      \e[32mArch      (pacman)"
    echo -e "\e[91m{99}     \e[32mExit\e[0m"
    echo
    read -p "Selection: " distroResponse

    if [ "$distroResponse" == "99" ]
    then
        intro
    fi

    if [ "$distroResponse" == "1" ]
    then
        sudo dnf install awesome 
    fi

    if [ "$distroResponse" == "2" ]
    then
        sudo apt install awesome lightdm -y
    fi

    if [ "$distroResponse" == "3" ]
    then
        sudo pacman -S awesome geany kitty picom rofi zsh

    fi
}
echo insall more aps ?

echo install full aps
echo install office 




intro