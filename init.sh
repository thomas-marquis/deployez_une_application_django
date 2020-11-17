#!/bin/bash

set -e
set -x

python manage.py migrate
python manage.py collectstatic --no-input
python manage.py loaddata store/dumps/store.json
python manage.py ensure_adminuser --username="$ADMIN_USERNAME" --email="$ADMIN_EMAIL" --password="$ADMIN_PASSWORD"
