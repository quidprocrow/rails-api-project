#!/bin/bash
NAME="I am a name also!"
curl "http://localhost:4741/lists/" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "list": {
      "name": "'"${NAME}"'"
    }
  }'

echo
