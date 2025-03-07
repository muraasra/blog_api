
# **Django Blog API**

## **Introduction**

Bienvenue dans **Django Blog API**, une application backend construite avec **Django Rest Framework**. Cette API permet de gérer des utilisateurs et leurs articles de blog via des endpoints RESTful. Elle est conçue pour être évolutive, robuste et facile à déployer avec Docker.

---

## **Fonctionnalités**

- CRUD complet pour les utilisateurs.
- CRUD complet pour les articles de blog.
- Documentation simplifiée des endpoints pour les développeurs.
- Prise en charge de l'exécution locale et déploiement via Docker.

---

## **Prérequis**

Avant de commencer, assurez-vous d'avoir les outils suivants installés :
- **Python 3.8+**
- **Docker** et **Docker Compose**
- **Git**
- **Jenkins**

---

## **Installation**

### **1. Cloner le projet**

Clonez le dépôt sur votre machine locale :

```bash
git clone https://github.com/muraasra/blog_api.git
cd blog_api
```

---

### **2. Configurer un environnement virtuel (optionnel)**

Créez et activez un environnement virtuel pour isoler les dépendances :

```bash
# Créer l'environnement virtuel
python -m venv venv

# Activer l'environnement virtuel
# Sous Linux/MacOS
source venv/bin/activate
# Sous Windows
venv\Scripts\activate
```

---

### **3. Installer les dépendances**

Installez les packages nécessaires listés dans le fichier `requirements.txt` :

```bash
pip install -r requirements.txt
```

---

### **4. Configurer la base de données**

Appliquez les migrations pour configurer la base de données locale :

```bash
python manage.py migrate
```

---

### **5. Lancer le serveur de développement**

Exécutez le serveur pour tester le projet en local :

```bash
python manage.py runserver
```

Le serveur sera disponible à l'adresse suivante : `http://127.0.0.1:8000`

---

### **6. (Optionnel) Lancer avec Docker**

Si vous préférez utiliser Docker, construisez et exécutez les conteneurs avec :

```bash
docker-compose build
docker-compose up
```

---


## **Documentation des Endpoints de l'API**

### **Utilisateurs (Users)**

#### **Créer un utilisateur**
- **Méthode :** `POST`
- **Endpoint :** `/api/users/`
- **Exemple de requête :**
  ```json
  {
    "name": "Alice Johnson",
    "email": "alice.johnson@example.com"
  }
  ```
- **Exemple de réponse :**
  ```json
  {
    "id": 101,
    "name": "Alice Johnson",
    "email": "alice.johnson@example.com"
  }
  ```

---

#### **Lister tous les utilisateurs**
- **Méthode :** `GET`
- **Endpoint :** `/api/users/`
- **Exemple de réponse :**
  ```json
  [
    {
      "id": 101,
      "name": "Alice Johnson",
      "email": "alice.johnson@example.com"
    },
    {
      "id": 102,
      "name": "Bob Smith",
      "email": "bob.smith@example.com"
    }
  ]
  ```

---

#### **Obtenir un utilisateur par ID**
- **Méthode :** `GET`
- **Endpoint :** `/api/users/{user_id}/`
- **Exemple de réponse :**
  ```json
  {
    "id": 101,
    "name": "Alice Johnson",
    "email": "alice.johnson@example.com"
  }
  ```

---

#### **Mettre à jour un utilisateur**
- **Méthode :** `PUT`
- **Endpoint :** `/api/users/{user_id}/`
- **Exemple de requête :**
  ```json
  {
    "name": "Alice J.",
    "email": "alice.j@example.com"
  }
  ```
- **Exemple de réponse :**
  ```json
  {
    "id": 101,
    "name": "Alice J.",
    "email": "alice.j@example.com"
  }
  ```

---

#### **Supprimer un utilisateur**
- **Méthode :** `DELETE`
- **Endpoint :** `/api/users/{user_id}/`
- **Exemple de réponse :**
  ```json
  {
    "message": "User deleted successfully."
  }
  ```

---

### **Articles (Posts)**

#### **Créer un article**
- **Méthode :** `POST`
- **Endpoint :** `/api/posts/`
- **Exemple de requête :**
  ```json
  {
    "title": "Introduction à Django",
    "content": "Cet article explore les bases de Django.",
    "author": 101
  }
  ```
- **Exemple de réponse :**
  ```json
  {
    "id": 301,
    "title": "Introduction à Django",
    "content": "Cet article explore les bases de Django.",
    "author": 101
  }
  ```

---

#### **Lister tous les articles**
- **Méthode :** `GET`
- **Endpoint :** `/api/posts/`
- **Exemple de réponse :**
  ```json
  [
    {
      "id": 301,
      "title": "Introduction à Django",
      "content": "Cet article explore les bases de Django.",
      "author": 101
    },
    {
      "id": 302,
      "title": "Les avantages de Docker",
      "content": "Découvrez comment Docker simplifie le développement.",
      "author": 102
    }
  ]
  ```

---

#### **Obtenir un article par ID**
- **Méthode :** `GET`
- **Endpoint :** `/api/posts/{post_id}/`
- **Exemple de réponse :**
  ```json
  {
    "id": 301,
    "title": "Introduction à Django",
    "content": "Cet article explore les bases de Django.",
    "author": 101
  }
  ```

---

#### **Mettre à jour un article**
- **Méthode :** `PUT`
- **Endpoint :** `/api/posts/{post_id}/`
- **Exemple de requête :**
  ```json
  {
    "title": "Introduction approfondie à Django",
    "content": "Cet article explore les bases et les fonctionnalités avancées de Django.",
    "author": 101
  }
  ```
- **Exemple de réponse :**
  ```json
  {
    "id": 301,
    "title": "Introduction approfondie à Django",
    "content": "Cet article explore les bases et les fonctionnalités avancées de Django.",
    "author": 101
  }
  ```

---

#### **Supprimer un article**
- **Méthode :** `DELETE`
- **Endpoint :** `/api/v1/posts/{post_id}/`
- **Exemple de réponse :**
  ```json
  {
    "message": "Post deleted successfully."
  }
  ```

### **Utilisateurs**

| Méthode | Endpoint             | Description              |
|---------|----------------------|--------------------------|
| `POST`  | `/api/users/`     | Créer un nouvel utilisateur. |
| `GET`   | `/api/users/`     | Obtenir tous les utilisateurs. |
| `GET`   | `/api/users/{id}/`| Obtenir un utilisateur spécifique. |
| `PUT`   | `/api/users/{id}/`| Mettre à jour un utilisateur. |
| `DELETE`| `/api/users/{id}/`| Supprimer un utilisateur. |

---

### **Articles**

| Méthode | Endpoint             | Description              |
|---------|----------------------|--------------------------|
| `POST`  | `/api/posts/`     | Créer un nouvel article. |
| `GET`   | `/api/posts/`     | Obtenir tous les articles. |
| `GET`   | `/api/posts/{id}/`| Obtenir un article spécifique. |
| `PUT`   | `/api/posts/{id}/`| Mettre à jour un article. |
| `DELETE`| `/api/posts/{id}/`| Supprimer un article. |

---

## **Contribuer**

Les contributions sont les bienvenues ! Si vous souhaitez signaler un bug ou proposer une fonctionnalité :

1. Créez une *issue* sur [GitHub](https://github.com/muraasra/blog_api/issues).
2. Faites un fork du projet.
3. Travaillez sur votre *branch* :
   ```bash
   git checkout -b feature/nom-feature
   ```
4. Soumettez une *pull request*.

---

## **Auteur**

- **Nom** : Raoul Tayou  
- **Email** : wilfriedtayou6@gmail.com  
- **GitHub** : [github.com/muraasra](https://github.com/muraasra)

---

## **Licence**

Ce projet est sous licence MIT. Consultez le fichier `LICENSE` pour plus de détails.

