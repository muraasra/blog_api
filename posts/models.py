from django.db import models

# Create your models here.
from users.models import Users

class Posts(models.Model):
    titre = models.CharField(max_length=100)
    contenu = models.TextField()
    date_publication = models.DateTimeField(auto_now_add=True)
    auteur = models.ForeignKey(Users, on_delete=models.CASCADE)

    def __str__(self):
        return self.titre
