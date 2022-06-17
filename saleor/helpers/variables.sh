#!/usr/bin/env bash
set -e # exit on error

export RSA_PRIVATE_KEY=$(cat /etc/secrets/saleor-key)
export ALLOWED_HOSTS="['$RENDER_EXTERNAL_HOSTNAME']"
export ALLOWED_CLIENT_HOSTS="${[$STOREFRONT_URL, $DASHBOARD_URL]}"