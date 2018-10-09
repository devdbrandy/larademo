#!/bin/bash

set -o pipefail

# Set config var APP_KEY with generated encryption key
/usr/local/heroku/bin/heroku config:set APP_KEY=$(php artisan key:generate --show)
