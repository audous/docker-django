#!/bin/bash

# create script to run alll commands to start project etc...

# docker-compose run web django-admin startproject website .

echo 'start setup-docker-django'

docker-compose run web django-admin startproject website .

docker-compose up -d

docker-compose exec web python manage.py migrate

docker-compose exec web python manage.py createsuperuser

docker-compose run web python manage.py startapp music

echo 'end setup-docker-django'