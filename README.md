# **drf-simple-chat**

On MacOS: install brew package manager:

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    
Install Python:

    brew install python
    brew link python --force


Create virtual environment:

    python3 -m venv .venv
    source .venv/bin/activate

Install libraries:

    pip install -r requirements.txt

Create db and run migrations:

    python manage.py migrate

Get test data from dump:

    sqlite3 db.sqlite3 < db_backup.sql

To launch the server:

    python manage.py runserver


Use "admin" user with "adminadmin" password for logging into Django admin panel and be able to get created usernames for getting tokens if needed

    python manage.py drf_create_token <username>