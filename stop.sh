#!/usr/bin/env bash
#Petit script pour arrêter facilement stable-diffusion-webui-docker qui a été démarré avec le start.sh !
#zf250717.1834

# source: 

echo -e "Arrêt de stable-diffusion-webui-docker...

"

docker stop $(docker ps -q)

pkill -f socat

echo -e "

stable-diffusion-webui-docker arrêté !

"
