#!/bin/bash

declare install_latex=1 #true
declare install_doom_emacs=1

# Cycle through the variables passed
while [ "$#" -gt 0 ]; do
    argument="$1"

    # Latex Download
    if [[ $argument == "no-latex"  ]]; then
        install_latex=0
    fi

    # Doom Emacs Download
    if [[ $argument == "no-doom"  ]]; then
        install_doom_emacs=0
    fi

    shift
done

# sudo apt update -y
# sudo apt upgrade -y

# sudo apt install git -y
# sudo apt install ripgrep -y
# sudo apt install vim -y
# sudo apt install htop -y
# sudo apt install emacs -y

# Brave Browser
# sudo apt install curl -y
# sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
# echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
# sudo apt update -y
# sudo apt install brave-browser -y


if [ $install_latex ]; then
    #sudo apt install texlive-full -y
    echo "texlive-full going to be installed"
fi

if [ $install_doom_emacs ]; then
    echo "Doom installation begins"
    # git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d
    # ~/.emacs.d/bin/doom install
    echo "doom emacs going to be installed"
fi

echo "Script finished running. All done."
