from django.urls import path
from . import views

urlpatterns = [
	path('', views.index),
	path('about/',views.about),
	path('contact/',views.contact),
	path('gallery/',views.gallery),
	path('products/',views.products),
	# path('registration/',views.registration),
	path('mail/',views.mail),
	


#################################################

	path('admin_home/',views.admin_index),
	path('cards/',views.admin_cards),
	path('carousels/',views.admin_carousels),
	# path('adminreg/',views.admin_adminreg),
	path('people/',views.admin_people),
	path('productadd/',views.admin_productadd),
	path('producttable/',views.admin_producttable),
	
]