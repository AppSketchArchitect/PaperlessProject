
# Install dependencies
sudo apt install python3 python3-pip python3-dev imagemagick fonts-liberation gnupg libpq-dev default-libmysqlclient-dev pkg-config libmagic-dev libzbar0 poppler-utils
sudo apt install unpaper ghostscript icc-profiles-free qpdf libxml2 pngquant zlib1g tesseract-ocr
sudo apt install build-essential python3-setuptools python3-wheel
sudo apt install redis-server
sudo apt install postgresql

# 
sudo adduser paperless --system --home /opt/paperless --group

sudo apt install curl

sudo curl -O -L https://github.com/paperless-ngx/paperless-ngx/releases/download/v1.10.2/paperless-ngx-v1.10.2.tar.xz

sudo tar -xf paperless-ngx-v1.10.2.tar.xz

sudo cp -a ./paperless-ngx/. /opt/paperless

sudo chown paperless:paperless /opt/paperless

sudo mkdir /opt/paperless/media
sudo mkdir /opt/paperless/data
sudo mkdir /opt/paperless/consume

sudo chown paperless:paperless /opt/paperless/media
sudo chown paperless:paperless /opt/paperless/data
sudo chown paperless:paperless /opt/paperless/consume

sudo -Hu paperless pip3 install -r requirements.txt