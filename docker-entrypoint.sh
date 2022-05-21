#!/bin/bash
# making migrations for each app
echo "making migration for books app ..."
python /code/manage.py makemigrations books
echo "making migration for pages app ..."
python /code/manage.py makemigrations pages
echo "making migration for users app ..."
python /code/manage.py makemigrations users

# migrate to database 
echo "Migrating the database "
python /code/manage.py migrate

#starting our development server
echo "starting the project ..."
python /code/manage.py runserver 0.0.0.0:8000

