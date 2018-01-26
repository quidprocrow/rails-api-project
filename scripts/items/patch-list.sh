#!/bin/bash
ID="1" CONTENT="Time to test lists!!" ARCHIVED="Y" LIST=1
curl "http://localhost:4741/items/{$ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "item": {
      "content": "'"${CONTENT}"'",
      "archived": "'"${ARCHIVED}"'",
      "list_id": "'"${LIST}"'"
    }
  }'

echo
