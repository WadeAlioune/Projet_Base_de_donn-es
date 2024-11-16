from django.db import models

# Create your models here.

class Categorie(models.Model):
    nom = models.CharField(max_length=200)
    date_ajout=models.DateTimeField(auto_now=True)

    class Meta :
        ordering = ['date_ajout']

    def __str__(self):
        return self.nom

class Produit(models.Model):
    titre=models.CharField(max_length=200)
    prix=models.FloatField()
    description=models.TextField()
    categorie = models.ForeignKey(Categorie, related_name='categorie' , on_delete=models.CASCADE)
    image=models.CharField(max_length=500)
    date_ajout=models.DateTimeField(auto_now=True)

    class Meta :
        ordering = ['date_ajout']
    def __str__(self):
        return self.titre
