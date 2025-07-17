# z-stable-diffusion-webui-docker
Juste une installation facile de stable-diffusion-webui-docker dans une vm Ubuntu de  Proxmox

zf250717.1721

ATTENTION: il ne faut pas confondre le dossier z-stable-diffusion-webui-docker, qui est le mien où il y a MES scripts d'installation<br>
et utilisation avec le dossier stable-diffusion-webui-docker qui est le dossier original où il y a les script install.sh et start.sh 
qui ne sont pas les miens !


## Installation
Il suffit juste de faire:
````
./install.sh
````

## Utilisation
Il suffit juste de faire:
````
./start.sh
````

Mon script *export* avec un *socat* le port de Fastsdcpu sur un port *externe* du serveur car autrement ce n'est pas possible de lui faire un tunnel CLoudFlare dessus

socat TCP-LISTEN:8080,fork,reuseaddr TCP:127.0.0.1:7860 &


Après il faut charger avec son browser:
````
http://adrs_ip:8080
````

## Pour effacer et tout réinstaller depuis zéro
Il faut arrêter stable-diffusion-webui-docker avec le script stop.sh, puis effacer les dossiers ~/.cache et ~/.local. Enfin relancer le script install.sh


## Sources:
https://github.com/AbdBarho/stable-diffusion-webui-docker
