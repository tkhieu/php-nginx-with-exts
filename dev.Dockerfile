FROM webdevops/php-nginx-dev:7.3

WORKDIR /exts

COPY exts /exts

RUN apt-get update && apt-get install -y xfonts-base xfonts-75dpi ttf-mscorefonts-installer

RUN dpkg -i /exts/wkhtmltox_0.12.6-1.buster_amd64.deb
