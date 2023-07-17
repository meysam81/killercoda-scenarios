FROM python:3.11-alpine AS base

WORKDIR /app

COPY requirements.txt *.py ./

RUN pip install -r requirements.txt -U pip

CMD ["python", "main.py"]
