FROM python:3.12.3

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

# Exposer le port 5000
EXPOSE 5000

# Commande pour lancer l'application
CMD ["python", "app.py"]
