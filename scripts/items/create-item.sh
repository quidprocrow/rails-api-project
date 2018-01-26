#!/bin/bash
CONTENT="I am an example of content." ARCHIVED="N"
curl "http://localhost:4741/items/" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "item": {
      "content": "'"${CONTENT}"'",
      "archived": "'"${ARCHIVED}"'"
    }
  }'

echo
