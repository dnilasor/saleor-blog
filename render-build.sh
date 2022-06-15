#!/usr/bin/env bash
set -e # exit on error

export RSA_PRIVATE_KEY=$(cat /etc/secrets/saleor-key)

pip3 install -r requirements.txt

if [ "$RENDER_SERVICE_TYPE" = "web" ]; then
  python manage.py migrate --no-input
fi
