FROM python:3.7-slim

RUN mkdir /app
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY app.py .

CMD gunicorn -w 4 -b 0.0.0.0:8080 app
