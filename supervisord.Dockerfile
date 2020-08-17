FROM webdevops/php:7.3

RUN apt-get update && apt-get install -y xfonts-base xfonts-75dpi ttf-mscorefonts-installer supervisor

COPY ./exts /exts

ONBUILD RUN dpkg -i /exts/wkhtmltox_0.12.6-1.buster_amd64.deb
