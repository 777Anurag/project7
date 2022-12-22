from django.db import models

# Create your models here.

class contct_tb(models.Model):
	usrname=models.CharField(max_length=255)
	email=models.CharField(max_length=255)
	phone=models.CharField(max_length=255)
	message=models.TextField()

class reg_tb(models.Model):
	username=models.CharField(max_length=255)
	useremail=models.CharField(max_length=255)
	userphone=models.CharField(max_length=255)
	userpassword=models.CharField(max_length=255)

class admin_reg_tb(models.Model):
	inputEmail4=models.CharField(max_length=255)
	inputPassword4=models.CharField(max_length=255)
	inputAddress=models.CharField(max_length=255)
	inputAddress2=models.CharField(max_length=255)
	inputCity=models.CharField(max_length=255)
	inputState=models.CharField(max_length=255)
	inputZip=models.CharField(max_length=255)


class productadd_tb(models.Model):
	proimage=models.FileField(upload_to='product/productadd')
	proname=models.CharField(max_length=255)
	proprice=models.CharField(max_length=255)
	prodescrp=models.CharField(max_length=255)

