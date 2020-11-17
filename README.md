# Déployez une application Django

Ce site sert de base au cours Déployez une application Django. 

# Déployer

**Builder l'image :**

````shell script
docker build -t disquaire .
````

**Pour lancer le serveur :** 

````shell script
docker run --rm -p 80:8000 --name disquaire disquaire
````

**killer le serveur :**

````shell script
docker stop disquaire
````

**lancer toute la stack :**

````shell script
docker-compose up
````

**lancer sous supervision :**

````shell script
# install
sudo yum install supervisor

# configure
echo "[program:disquaire]" >> /etc/supervisor/conf.d/disquaire.conf
echo "command = docker-compose up" >> /etc/supervisor/conf.d/disquaire.conf
echo "user = disqaire" >> /etc/supervisor/conf.d/disquaire.conf
echo "directory = /home/disquaire" >> /etc/supervisor/conf.d/disquaire.conf
echo "autostart = true" >> /etc/supervisor/conf.d/disquaire.conf
echo "autorestart = true" >> /etc/supervisor/conf.d/disquaire.conf

sudo supervisorctl reread
sudo supervisorctl update

# vérifier que c'est bien lancé
sudo supervisorctl status
````

# Contributeurs

[Céline Martinet Sanchez](https://github.com/celine-m-s) pour OpenClassrooms.
