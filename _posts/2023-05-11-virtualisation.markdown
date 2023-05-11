---
layout: post
title:  "Virtualisation"
date:   2023-05-11 16:15:17
categories: Infras
---

## VIRTUALISATION - port forwarding
Cet article montre une façon d'accéder à une page web d'une machine virtuelle (sur laquelle j'installe le serveur nginx), un accès depuis le navigateur du host (et non de la machine virtuelle même).

## Environnement de travail
Je précise que j'ai mis la VM en place à partir de Vagrant, en ayant choisi comme box, hashicorp/bionic64

Nous travaillons donc sur le système ubuntu
<img src="https://raw.githubusercontent.com/abiForSofteam/virtualisation/main/vm_system.png">

Je précise également que l'adresse ip que j'ai attribuée à la VM est la suivante : 
192.168.56.10

<sub>***Vagrant fera l'objet d'un prochain article***</sub>

## Installation du serveur web nginx sur la machine virtuelle
En ligne de commande, l'installation du serveur web nginx se fait de la façon suivante:  

**sudo apt-get install nginx -y**

<img src="https://raw.githubusercontent.com/abiForSofteam/virtualisation/main/nginx_install.png">


## Vérification de l'état du serveur
La Vérification de l'état du serveur se fait par la commande suivante:  

**service nginx status**

<img src="https://raw.githubusercontent.com/abiForSofteam/virtualisation/main/nginx_status.png">

## Les différentes étapes pour la mise en place du port forwarding (sur virtualbox)
<img src="https://raw.githubusercontent.com/abiForSofteam/virtualisation/main/img1.png">

<img src="https://raw.githubusercontent.com/abiForSofteam/virtualisation/master/img2.png">

<img src="https://raw.githubusercontent.com/abiForSofteam/virtualisation/master/img3.png">



## <sub> Affichage de la page sur le navigateur de la machine hôte (bien que le serveur nginx soit installé sur la VM) </sub> 

<img src="https://raw.githubusercontent.com/abiForSofteam/virtualisation/main/nginx_from_host_browser.png">