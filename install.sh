#!/usr/bin/env bash
#Petit script pour installer facilement stable-diffusion-webui-docker dans une vm Ubuntu de  Proxmox et ses outils qui vont bien
#zf250717.1748, zf250717.1816

# source: 

echo -e "\Installation de stable-diffusion-webui-docker...

"

echo ""
read -p "Etes-vous certain de continuer ( CTRL+C pour arrêter ) ?"
echo ""

sudo apt update ; sudo apt install socat


cd ../
git clone https://github.com/AbdBarho/stable-diffusion-webui-docker.git
cd stable-diffusion-webui-docker

cp ../z-stable-diffusion-webui-docker/Dockerfile ./services/AUTOMATIC1111/
docker compose --profile download up --build

