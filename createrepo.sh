#!/bin/bash
read -p "Entrez le nom du repo: " X
sudo gh repo create $X --public --clone
if  test -d $X
then
    cd $X
    sudo rm -rf .git
    echo "# $X" >> README.md
    sudo git init
    sudo git add .
    sudo git commit -m "first commit"
    sudo git branch -M main
    sudo git remote add origin git@github.com:abiForSofteam/$X.git
    sudo git push -u origin main
    $SHELL # pour que les précédentes commandes puissent s'exécuter
    
fi

