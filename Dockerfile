FROM ubuntu:latest

WORKDIR /app

COPY . /app

RUN apt-get update -y && apt-get install -y python3 python3-pip


ENV NAME world

CMD ["python3", "app.py"]


