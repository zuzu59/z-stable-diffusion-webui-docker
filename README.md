# z-stable-diffusion-webui-docker
Juste une installation facile de stable-diffusion-webui-docker dans une vm Ubuntu de  Proxmox

zf250717.1721, zf250719.1831

ATTENTION: il ne faut pas confondre le dossier z-stable-diffusion-webui-docker, qui est le mien où il y a MES scripts d'installation<br>
et utilisation avec le dossier stable-diffusion-webui-docker qui est le dossier original où il y a les script install.sh et start.sh 
qui ne sont pas les miens !


## Installation
Il suffit juste de faire:
````
./install.sh
````

## Utilisation
Il suffit juste de faire pour:

Avoir l'interface AUTOMATIC1111 avec CPU
````
start-AUTOMATIC1111-cpu.sh
````

Avoir l'interface AUTOMATIC1111 avec GPU
````
start-AUTOMATIC1111-gpu.sh
````

Avoir l'interface Comfy avec CPU
````
start-comfy-cpu.sh
````

Avoir l'interface Comfy avec GPU
````
start-comfy-gpu.sh
````

Mon script *export* avec un *socat* le port de stable-diffusion-webui-docker sur un port *externe* du serveur car autrement ce n'est pas possible de lui faire un tunnel CLoudFlare dessus

socat TCP-LISTEN:8080,fork,reuseaddr TCP:127.0.0.1:7860 &


Après il faut charger avec son browser:
````
http://adrs_ip:8080
````

## Pour effacer et tout réinstaller depuis zéro
Il faut arrêter stable-diffusion-webui-docker avec le script stop.sh<br>
puis effacer les dossiers ./data<br>
enfin un *docker system prune -a -f --volumes*<br>
Puis relancer le script install.sh

## Sources:
https://github.com/AbdBarho/stable-diffusion-webui-docker
