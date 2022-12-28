#!/bin/bash

declare install_latex=1 #true
declare install_doom_emacs=1
declare install_reveal_js=1
declare install_doom_default=0

# Cycle through the variables passed
while [ "$#" -gt 0 ]; do
    argument="$1"

    if [[ $argument == "no-latex"  ]]; then
        install_latex=0
    fi

    if [[ $argument == "no-doom"  ]]; then
        install_doom_emacs=0
    fi

    if [[ $argument == "no-revealjs"  ]]; then
        install_reveal_js=0
    fi

    if [[ $argument == "doom-default"  ]]; then
        install_doom_default=1
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


if [ $install_latex -eq 1 ]; then
    #sudo apt install texlive-full -y
    echo "latex"
fi

if [ $install_reveal_js -eq 1 ]; then
    # Reveal JS and Dependencies
    # -NodeJs
    # curl -fsSL https://deb.nodesource.com/setup_19.x | sudo -E bash - &&\
    # sudo apt-get install -y nodejs
    #
    # -reveal js
    #git clone https://github.com/hakimel/reveal.js.git ~/.reveal.js
    #cd ~/.reveal.j && npm install
    #cd ~
    echo "reveal js"
fi

if [ $install_doom_emacs -eq 1 ]; then
    # git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d
    # ~/.emacs.d/bin/doom install
    echo "doom emacs"
fi

if [ $install_doom_default -eq 0 ]; then
    echo "Installed menta doom config"
fi

# sudo apt update -y
# sudo apt upgrade -y

echo "Script finished running. All done."
