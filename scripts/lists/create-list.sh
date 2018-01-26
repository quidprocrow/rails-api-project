#!/bin/bash
NAME="list name!"
curl "http://localhost:4741/lists/" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "list": {
      "name": "'"${NAME}"'"
    }
  }'

echo
