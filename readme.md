# Docker Django Boilerplate
Docker Django Boilerplate Fork this project to create your own Django project with a docker container.

The docker container is containing this stack: 

Programming Language: Python 

Framework: Django

Database: Postgres

## fork this repo 
This will get you to the "Create a Django project" step from this tutorial https://docs.docker.com/compose/django/ 

### open terminal at project root and enter these commands
```bash
docker-compose run web django-admin startproject website .

docker-compose run web python manage.py startapp music

docker-compose exec web python manage.py migrate

docker-compose exec web python manage.py createsuperuser

```
```bash
docker-compose up
```
### open a shell inside the Django container
```bash
docker-compose exec web sh
```
## common commands to get started

### python migrate
```bash
python manage.py migrate
```
### python create admin user
```bash
python manage.py createsuperuser
```
### You can create another app called "name_of_your_new_app" with this command
```bash
python manage.py startapp name_of_your_new_app
```

## other useful docker commands

### Shutting Down
```bash
docker-compose down
```

### start up container again
```bash
docker-compose up
```

### list all containers
```bash
docker ps -a -q
```
### stop all containers
```bash
docker stop $(docker ps -a -q)
```
### remove all containers
```bash
docker rm $(docker ps -a -q)
```
