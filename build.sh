set -o errexit  # exit on error

pip install -r requirements.txt

python3 manage.py makemigrations

python3 manage.py collectstatic --no-input
python3 manage.py migrate

#python3 populate_catalog.py

python manage.py createsuperuser
