#!/bin/bash
NAME="A different name!" ID="1"
curl "http://localhost:4741/lists/{$ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"
  --data '{
    "list": {
      "name": "'"${NAME}"'"
    }
  }'

echo
