from django.contrib import admin
from .models import Categorie , Produit

# Register your models here.

admin.site.site_header = "Mon stock de produits"
admin.site.site_title ="Ma boutique"
admin.site.index_title ="Aly_babel_business"
class AdminCategorie(admin.ModelAdmin):
    list_display=('nom','date_ajout')

class AdminProduit(admin.ModelAdmin):
    list_display=('titre','prix','categorie','date_ajout')

    #Pour faire des recherches de produits depuis le panel admin
    search_fields=('titre' ,)
    # Pour editer les produits depuis le panel admin
    list_editable=('prix' ,)

admin.site.register(Produit,AdminProduit)
admin.site.register(Categorie,AdminCategorie)
