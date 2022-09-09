#! /bin/bash

# Script criado por: Lucas e Joseph( discord: LucasDias#0402 REDVENOMEXTREME#8288 ). 
# Fundador da Sociedade Pinguim ( https://discord.gg/ewe2TubvDW ).
# Script testado no Ubuntu 22.04 LTS.

echo "Removendo travas!"
    sudo rm /var/lib/dpkg/lock-frontend; sudo rm /var/cache/apt/archives/lock  

echo "Removendo travas."
    sudo rm /var/lib/dpkg/lock-frontend; sudo rm /var/cache/apt/archives/lock

echo "Habilitando pacotes i386 no sistema."
    sudo dpkg --add-architecture i386
    sudo apt update ; sudo apt upgrade

echo

echo "Instalando dependências!"
    sudo apt install mesa-vulkan-drivers mesa-vulkan-drivers:i386 libvulkan1 libvulkan1:i386
    sudo apt install libgl1-mesa-glx:i386 libgl1-mesa-dri:i386
    sudo apt install mesa-vulkan-drivers vulkan-tools libassimp5

echo Baixando e importando chaves!
    sudo wget -nc -O /usr/share/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
    sudo apt-key add winehq.key

echo

echo Adicionando repositório!
    sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources

echo "Adicionando o Lutris."
    sudo add-apt-repository ppa:lutris-team/lutris
    sudo apt update

echo "Adicionando o Steam."
    wget -c https://repo.steampowered.com/steam/archive/precise/steam_latest.deb
    sudo dpkg -i steam_latest.deb

echo "Instalando pacotes [/] "
    sudo apt install wine-stable libwine-development wine64-development fonts-wine wine64 wine32-preloader winetricks lutris libvulkan1 libvulkan1:i386 mesa-vulkan-drivers mesa-vulkan-drivers:i386

echo "Instalando o wine64 e x86"
    sudo apt-get install --install-recommends winehq-staging
    sudo apt-get install --install-recommends winehq-stable wine-stable wine-stable-i386 wine-stable-amd64 
    sudo apt install --install-recommends winehq-staging 
    sudo apt install --install-recommends winehq-staging wine-staging wine-staging-i386 
    sudo apt install libgnutls30:i386 libldap-2.4-2:i386 libgpg-error0:i386 libxml2:i386 libasound2-plugins:i386 libsdl2-2.0-0:i386 libfreetype6:i386 libdbus-1-3:i386 libsqlite3-0:i386


echo "Finalizando instalação!"
    sudo apt autoclean ; sudo apt autoremvoe
    sudo apt update && sudo apt upgrade


echo "Atualização finalizada com sucesso!"

echo "Visite o nosso site https://linktr.ee/sociedadepinguim"

