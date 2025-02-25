# Utiliser l’image officielle de Python comme image de base
FROM python:latest

# Définir le répertoire de travail dans le conteneur
RUN mkdir /app

WORKDIR /app

# Définir les variables d'environnement
# Empêche Python d'écrire des fichiers pyc sur le disque
ENV PYTHONDONTWRITEBYTECODE=1
# Empêche Python de mettre en mémoire tampon stdout et stderr
ENV PYTHONUNBUFFERED=1 

# Copier le fichier requirements dans le conteneur à l'adresse /app
COPY requirements.txt /app/requirements.txt

# Installer toutes les dépendances spécifiées dans requirements.txt
RUN pip install --upgrade pip && \
    pip install -r /app/requirements.txt

# Copier le code local dans le conteneur
COPY . /app/

# Exposer le port 8000 pour que Django puisse l'utiliser
EXPOSE 8000

# Commande pour exécuter au démarrage du conteneur
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
