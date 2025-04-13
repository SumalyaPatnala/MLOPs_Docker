# Use an official Python runtime as a parent image
FROM python:alpine

# Set the working directory in the container
WORKDIR /app

COPY . /app

RUN pip install --no -cache-dir  -r requirements.txt

EXPOSE 5000

ENV FLASK_APP = app.python

CMD ["flask", "run", "--host=0.0.0.0"]

