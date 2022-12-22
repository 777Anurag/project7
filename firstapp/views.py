from django.shortcuts import render
from django.http import HttpResponseRedirect
from firstapp.models import  *
import os
import string
from django.conf import settings
from django.core.mail import send_mail
# Create your views here.

def index(request):
	return render(request,'index.html')

def about(request):
	return render(request,'about.html')

def contact(request):
	if request.method == "POST":
		NAME=request.POST['usrname']
		EMAIL=request.POST['email']
		PHONE=request.POST['phone']
		MESSAGE=request.POST['message']
		check=contct_tb.objects.filter(email=EMAIL)
		if check:
			return render(request,'contact.html',{"error":"email already existing"})
		else:
			add=contct_tb(usrname=NAME,email=EMAIL,phone=PHONE,message=MESSAGE)
			add.save()
			return render(request,'contact.html',{"sucess":"SAVED"})
	else:
		return render(request,'contact.html')
	

def gallery(request):
	data=productadd_tb.objects.all()
	return render(request,'gallery.html',{"prd":data})

# def registration(request):
	# if request.method == "POST":
	# 	NAME=request.POST['username']
	# 	EMAIL=request.POST['useremail']
	# 	PHONE=request.POST['userphone']
	# 	PASSWORD=request.POST['userpassword']
	# 	check=reg_tb.objects.filter(useremail=EMAIL)
	# 	if check:
	# 		return render(request,'registration.html',{"error":"Email already existing"})
	# 	else:
	# 		add=reg_tb(username=NAME,useremail=EMAIL,userphone=PHONE,userpassword=PASSWORD)
	# 		add.save()
	# 		return render(request,'registration.html',{"sucess":"Registeration Succesful"})
	# else:
		# return render(request,'registration.html')
		

def products(request):
	data=productadd_tb.objects.all()
	 
	return render(request,'products.html',{"prd":data})

def mail(request):
	if request.method == "POST":
		NAME=request.POST['username']
		EMAIL=request.POST['useremail']
		PHONE=request.POST['userphone']
		check=reg_tb.objects.filter(useremail=EMAIL)
		pid=request.GET['pid']
		data=productadd_tb.objects.filter(id=pid)
		for x in data:
			name=x.proname
		if check:
			return render(request,'mail.html',{"error":"Email already send"})
		else:
			# add=reg_tb(username=NAME,useremail=EMAIL,userphone=PHONE,userpassword)
			# add.save()
			subject = 'TVS Motors'
			message = f'There is an enquiry from a customer :{EMAIL}, for the product :{name}.'
			email_from = settings.EMAIL_HOST_USER
			recipient_list = [settings.EMAIL_HOST_USER, ]
			send_mail( subject, message, email_from, recipient_list ) 

			subject = 'welcome to TVS Motors'
			message = f'Hi {NAME}, thank you for interacting with us.We will contact you shortly.Your user username: {EMAIL}.'
			email_from = settings.EMAIL_HOST_USER
			recipient_list = [EMAIL, ]
			send_mail( subject, message, email_from, recipient_list )
			return render(request,'mail.html',{"sucess":"Email send Succesfully"})
	else:
		return render(request,'mail.html')
			


###############################################################################################################

def admin_index(request):
	return render(request,'admin/index.html')


def admin_cards(request):
	return render(request,'admin/cards.html')

def admin_carousels(request):
	return render(request,'admin/carousels.html')

# def admin_adminreg(request):
# 	data=admin_reg_tb.objects.all()
# 	if request.method == "POST":
# 		EMAIL=request.POST['inputEmail4']
# 		PASSWORD=request.POST['inputPassword4']
# 		ADDRESS=request.POST['inputAddress']
# 		ADDRESS2=request.POST['inputAddress2']
# 		CITY=request.POST['inputCity']
# 		STATE=request.POST['inputState']
# 		ZIP=request.POST['inputZip']
# 		check=admin_reg_tb.objects.filter(inputEmail4=EMAIL)
# 		if check:
# 			return render(request,'admin/adminreg.html',{"error":"Email already existing","data":data})
# 		else:
# 			add=admin_reg_tb(inputEmail4=EMAIL,inputPassword4=PASSWORD,inputAddress=ADDRESS,inputAddress2=ADDRESS2,inputCity=CITY,inputState=STATE,inputZip=ZIP)
# 			add.save()
# 			return render(request,'admin/index.html',{"sucess":"Registeration Succesful"})
# 	else:
# 		return render(request,'admin/adminreg.html',{"data":data})
# 	return render(request,'admin/adminreg.html')

def admin_people(request):
	return render(request,'admin/people.html')

def admin_productadd(request):
	if request.method == "POST":
		IMAGE=request.FILES['proimage']
		NAME=request.POST['proname']
		PRICE=request.POST['proprice']
		DESCRIPTION=request.POST['prodescrp']
		check=productadd_tb.objects.filter(proname=NAME)
		if check:
			return render(request,'admin/productadd.html',{"error":"Product already exist"})
		else:
			add=productadd_tb(proimage=IMAGE,proname=NAME,proprice=PRICE,prodescrp=DESCRIPTION)
			add.save()
			return render(request,'admin/index.html',{"sucess":"Product added succesfully"})
	else:
			return render(request,'admin/productadd.html')


	return render(request,'admin/productadd.html')

def admin_producttable(request):
	data=productadd_tb.objects.all()
	return render(request,'admin/producttable.html',{'users':data})
	
def admin_blocks(request):
	return render(request,'admin/blocks.html')