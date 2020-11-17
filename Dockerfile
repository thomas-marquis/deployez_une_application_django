FROM python:3.8

ENV ENV="PRODUCTION"
ENV DATABASE="default"
ENV ADMIN_USERNAME="discman"
ENV ADMIN_PASSWORD="Admin_13345!?"
ENV ADMIN_EMAIL="thomas.marquis.dev@gmail.com"
ENV WORKERS=5
ENV GUNICORN_CMD_ARGS="--bind=0.0.0.0 --workers=$WORKERS"

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt && \
    python manage.py migrate && \
    python manage.py collectstatic --no-input && \
    python manage.py loaddata store/dumps/store.json && \
    echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('$ADMIN_USERNAME', '$ADMIN_EMAIL', '$ADMIN_PASSWORD')" | python manage.py shell

EXPOSE 8000

CMD gunicorn disquaire_project.wsgi
