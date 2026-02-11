apt install python3 python3-pip python3-dev imagemagick fonts-liberation gnupg libpq-dev default-libmysqlclient-dev pkg-config libmagic-dev libzbar0 poppler-utils

apt install unpaper ghostscript icc-profiles-free qpdf libxml2 pngquant zlib1g tesseract-ocr

apt install build-essential python3-setuptools python3-wheel

apt install redis-server

apt install postgresql

adduser paperless --system --home /opt/paperless --group

apt install curl

curl -O -L https://github.com/paperless-ngx/paperless-ngx/releases/download/v1.10.2/paperless-ngx-v1.10.2.tar.xz

tar -xf paperless-ngx-v1.10.2.tar.xz

cp -a ./paperless-ngx/. /opt/paperless