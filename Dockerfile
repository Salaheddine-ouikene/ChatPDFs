# Utiliser une image de base Python
FROM python:3.9-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers nécessaires dans l'image
COPY . .

# Installer les dépendances
RUN pip install -r requirements.txt

# Exposer le port sur lequel l'application s'exécute
EXPOSE 8501

# Commande pour lancer l'application
CMD ["streamlit", "run", "app.py"]
