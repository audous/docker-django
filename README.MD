#Docker Django Getting Started Guide

##clone this repo 
This will give you the files needed to complete this tutorial https://docs.docker.com/compose/django/ 

The clone is a shortcut to this tutorial section - Create a Django project

##Create a Django project

###open terminal at project root 

$ docker-compose run web django-admin startproject composeexample .
$ docker-compose up

###open shell in container
$ docker-compose exec web sh

###python migrate
$ python manage.py migrate

###python create admin user
$ python manage.py createsuperuser

###this project already has this in the files for music as app example. You can make another app with this command
$ python manage.py startapp name_of_my_new_app

