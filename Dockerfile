FROM python:3.8

ENV ENV="PRODUCTION"
ENV ADMIN_USERNAME="discman"
ENV ADMIN_PASSWORD="Admin_13345!?"
ENV ADMIN_EMAIL="thomas.marquis.dev@gmail.com"
ENV WORKERS=5
ENV GUNICORN_CMD_ARGS="--bind=0.0.0.0 --workers=$WORKERS"
ENV DJANGO_SETTINGS_MODULE="disquaire_project.settings.production"

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

EXPOSE 8000

CMD /bin/bash init.sh && gunicorn disquaire_project.wsgi
