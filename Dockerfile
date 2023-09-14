FROM python:3.9.6-slim-bullseye

ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get install -y locales

RUN sed -i '/ru_RU.UTF-8/s/^# //g' /etc/locale.gen && \
    locale-gen
ENV LANG ru_RU.UTF-8 
ENV LANGUAGE ru_RU.UTF-8 
ENV LC_ALL ru_RU.UTF-8


WORKDIR /code

COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY . .