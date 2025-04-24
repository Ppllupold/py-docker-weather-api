FROM python:3.11-alpine

LABEL maintainer = "kotnazar2005@gmail.com"

ENV PYTHONBUFFERED 1

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY app .

CMD ["python", "main.py"]

