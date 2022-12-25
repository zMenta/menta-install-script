#!/bin/bash

declare install_latex=1 #true

# Cycle through the variables passed
while [ "$#" -gt 0 ]; do
    argument="$1"

    # Latex Download
    if [[ $argument == "no-latex"  ]]; then
        echo "Latex is not going to be installed"
        install_latex=1
    fi

    shift
done

# sudo apt update -y
# sudo apt upgrade -y

# sudo apt install vim -y
# sudo apt install htop -y

if [ $install_latex ]; then
    #sudo apt install texlive-full -y
    echo "texlive-full going to be installed"
fi

echo "Script finished running. All done."
