#!/bin/bash

set -o pipefail

# Set config var APP_KEY with generated encryption key
curl -n -X PATCH https://api.heroku.com/apps/$HEROKU_APP_ID/config-vars \
  -d '{
  "APP_KEY": $(php artisan key:generate --show),
}' \
  -H "Accept: application/vnd.heroku+json; version=3" \
  -H "Authorization: Bearer $HEROKU_API_KEY"
