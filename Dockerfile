# Utiliser une image de base Python
FROM python:3.12-slim


# Définir les variables d'environnement
ENV PYTHONUNBUFFERED 1

# Créer le répertoire de l'application
WORKDIR /app

# Copier les dépendances de l'application
COPY requirements.txt .

# Installer les dépendances de l'application
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Copier le code source de l'application
COPY . .

# Use CMD to run the script
CMD ["bash", "/app/django.sh"]

# Exposer le port 8000
EXPOSE 8000

# Définir le point d'entrée pour exécuter le script django.sh
ENTRYPOINT ["/app/django.sh"]
