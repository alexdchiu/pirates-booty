FROM python:3

WORKDIR /app
COPY requirements.txt /code/
RUN pip install -r requirements.txt
CMD gunicorn --bind 0.0.0.0:8000 
