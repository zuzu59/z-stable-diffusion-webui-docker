#!/usr/bin/env bash
#Petit script pour arrêter facilement Fastsdcpu dans un container LXC sous Proxmox, qui a été démarré avec le start.sh !
#zf250303, zf250304.1105

# source: 

echo -e "Arrêt de Fastsdcpu...

"

for pid in $(pgrep -f start); do
    pkill -P $pid
done

pkill -f socat

echo -e "

Fastsdcpu arrêté !

"
