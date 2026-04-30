# https://docs.docker.com/language/python/build-images/
FROM python:3.11-alpine

ENV FLASK_APP=login_form

WORKDIR /app
COPY . .

RUN pip install -r requirements.txt

RUN chmod +x scripts/*

EXPOSE 5000

CMD ["./scripts/entrypoint.sh"]
