#! /bin/bash

# Script criado por: Lucas ( discord: LucasDias#0402 ). Fundador da Sociedade Pinguim ( https://discord.gg/ewe2TubvDW )
# Script testado no linux mint e derivados.

echo

echo "Removendo travas!"
sudo rm /var/lib/dpkg/lock-frontend; sudo rm /var/cache/apt/archives/lock ;

echo

# !===================================

echo "Adicionando PPA e atualizando o sistema."
# sudo add-apt-repository ppa:kisak/kisak-mesa
sudo apt update && sudo apt upgrade

echo

echo "Removendo travas."
sudo rm /var/lib/dpkg/lock-frontend; sudo rm /var/cache/apt/archives/lock

echo "Habilitando pacotes i386 no sistema."
sudo dpkg --add-architecture i386

echo

echo "Instalando dependências!"
sudo apt install mesa-vulkan-drivers mesa-vulkan-drivers:i386 libvulkan1 libvulkan1:i386
sudo apt install libgl1-mesa-glx:i386 libgl1-mesa-dri:i386
sudo apt update && sudo apt upgrade
sudo apt install mesa-vulkan-drivers vulkan-tools libassimp5
sudo apt update && sudo apt upgrade

echo

# !===================================

echo Baixando e importando chaves!
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key

echo

echo Adicionando repositório!
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/debian/ buster main '

echo

echo "Adicionando o Lutris."
sudo add-apt-repository ppa:lutris-team/lutris
sudo apt update

echo

echo "Instalando pacotes [/] "
sudo apt install wine-stable libwine-development wine64-development fonts-wine wine64 wine32-preloader winetricks lutris libvulkan1 libvulkan1:i386 mesa-vulkan-drivers mesa-vulkan-drivers:i386 -y

echo

echo Instalando o wine64 e x86
sudo apt-get install --install-recommends winehq-staging
sudo apt-get install --install-recommends winehq-stable wine-stable wine-stable-i386 wine-stable-amd64 -y
sudo apt install --install-recommends winehq-staging -y
sudo apt install --install-recommends winehq-staging wine-staging wine-staging-i386 -y
sudo apt install libgnutls30:i386 libldap-2.4-2:i386 libgpg-error0:i386 libxml2:i386 libasound2-plugins:i386 libsdl2-2.0-0:i386 libfreetype6:i386 libdbus-1-3:i386 libsqlite3-0:i386 -y

echo

echo "Finalizando instalação!"
sudo apt autoclean

echo

echo "Atualizações finais."
sudo apt update && sudo apt uprade

echo

echo "Atualização finalizada com sucesso!"
echo
echo "Visite o nosso site http://sociedade-pinguim.rf.gd | a let tttttttttt"

