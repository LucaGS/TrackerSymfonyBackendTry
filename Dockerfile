FROM docker/whalesay:latest
LABEL Name=trackersymfonybackend Version=0.0.1
RUN apt-get -y update && apt-get install -y fortunes
ENV COMPOSER_ALLOW_SUPERUSER=1
CMD ["sh", "-c", "/usr/games/fortune -a | cowsay"]
