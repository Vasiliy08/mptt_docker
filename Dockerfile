FROM python:alpine

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apk add postgresql-client build-base postgresql-dev

RUN pip install --upgrade pip

COPY req.txt ./

EXPOSE 8000

RUN pip install -r req.txt

COPY . .
