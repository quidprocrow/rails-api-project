#!/bin/bash
CONTENT="I am an example of content." ARCHIVED="N" LIST="1"
curl "http://localhost:4741/items/" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "item": {
      "content": "'"${CONTENT}"'",
      "archived": "'"${ARCHIVED}"'",
      "list_id": "'"${LIST}"'"
    }
  }'

echo
