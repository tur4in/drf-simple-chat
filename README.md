# **drf-simple-chat**

On MacOS: install brew package manager

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    
Install Python

    brew install python
    brew link python --force


Create virtual environment

    python -m venv .venv
    source .venv/bin/activate

Install libraries

    pip install -r requirements.txt

Create db and run migrations

    python manage.py migrate

Get test data from dump

    sqlite3 db.sqlite3 < db_backup.sql
