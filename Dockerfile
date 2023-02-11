# We're using Debian Slim Buster image
FROM python:3.8.5-slim-buster

ENV PIP_NO_CACHE_DIR 1

# Installing Required Packages
RUN apt update && apt upgrade -y
RUN apt install git curl -y
# Pypi package Repo upgrade

WORKDIR /app
RUN python -m pip install --upgrade pip
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
RUN curl https://get.okteto.com -sSfL | sh
CMD [ "bash", "start.sh"]
