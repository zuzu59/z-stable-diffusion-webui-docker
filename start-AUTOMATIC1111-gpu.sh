#!/usr/bin/env bash
#Petit script pour démarrer facilement stable-diffusion-webui-docker dans une vm Ubuntu de  Proxmox, avec surtout la redirection du port sur le local network
#zf250717.1742

# source: 

echo -e "Démarrage de stable-diffusion-webui-docker...

"

./stop.sh


#cp ./share-start.sh ../fastsdcpu/

cd ../stable-diffusion-webui-docker/
socat TCP-LISTEN:8080,fork,reuseaddr TCP:127.0.0.1:7860 &
#./share-start.sh
#./start-webui.sh
docker compose --profile auto up --build &

# &

# > /tmp/fastsdcpu.log 2>&1 &



exit

echo -e "

Fastsdcpu démarré !

"

#tail -f /tmp/fastsdcpu.log

