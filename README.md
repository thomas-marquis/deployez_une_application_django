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

# Contributeurs

[Céline Martinet Sanchez](https://github.com/celine-m-s) pour OpenClassrooms.
