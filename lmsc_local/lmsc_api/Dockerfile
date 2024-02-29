FROM python:3.9-buster
ENV PYTHONUNBUFFERED=1

WORKDIR /

COPY requirements.txt /
RUN pip install --no-cache-dir --upgrade -r /requirements.txt

#ADD ../../environment/develop/envfile /app

EXPOSE 443

ENTRYPOINT ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--reload", "--port", "443", "--ssl-keyfile=/etc/ssl/localhost-key.pem", "--ssl-certfile=/etc/ssl/localhost.pem"]
