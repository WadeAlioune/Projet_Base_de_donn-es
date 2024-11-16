from django.shortcuts import render
from .models import Produit
from django.core.paginator import Paginator

# Create your views here.

def index (request):
    product_object=Produit.objects.all()

    item_name=request.GET.get('item-name')
    if item_name !='' and item_name is not None :
        product_object=Produit.objects.filter(titre__icontains=item_name)

    paginator=Paginator(product_object,4)
    page=request.GET.get('page')
    product_object=paginator.get_page(page)
    
    return render (request,'My_Shop/index.html',{'product_object':product_object})
 
def detail(request,myid):
    product_object=Produit.objects.get(id=myid)
    return render(request, 'My_Shop/detail.html', {'product':product_object})