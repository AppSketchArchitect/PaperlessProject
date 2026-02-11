
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

sudo mkdir /opt/paperless/media
sudo mkdir /opt/paperless/data
sudo mkdir /opt/paperless/consume

sudo chown paperless:paperless /opt/paperless/media
sudo chown paperless:paperless /opt/paperless/data
sudo chown paperless:paperless /opt/paperless/consume

sudo apt install python3-pip sudo apt install python3-venv


cd /opt/paperless

# Install python 3.10.12 to prevent from python3.13 of Ubuntu trixie 13 because of paperless pip dependencies
sudo apt install -y build-essential libssl-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libffi-dev zlib1g-dev
sudo wget https://www.python.org/ftp/python/3.10.12/Python-3.10.12.tgz
sudo tar -xvf Python-3.10.12.tgz
cd ./Python-3.10.12
sudo ./configure --enable-optimizations
sudo make altinstall
cd ../

./Python-3.10.12/python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
cd ../src
python3 -m pip install django/
python3 manage.py migrate

chown paperless:paperless -R venv
sudo chown paperless:paperless /opt/paperless