FROM python:3.9-alpine

LABEL author="HIMAL SHAKYA"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt


RUN adduser -D app_user
WORKDIR /home/app_user
USER app_user

COPY ./app /home/app
