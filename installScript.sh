#!/bin/bash

declare install_latex="yes"
install_latex="$1"

if [[ $install_latex == "no-latex"  ]]; then
    echo "Latex is not going to be installed"
elif [[ $install_latex == "" ]]; then
     echo "Running default script order"
fi

# sudo apt update -y
# sudo apt upgrade -y

# sudo apt install vim -y
# sudo apt install htop -y

# echo "$install_latex"

echo "Script finished running. All done."
