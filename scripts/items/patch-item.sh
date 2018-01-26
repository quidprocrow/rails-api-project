#!/bin/bash
ID="3" CONTENT="I am the patch test!" ARCHIVED="Y"
curl "http://localhost:4741/items/{$ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "item": {
      "content": "'"${CONTENT}"'",
      "archived": "'"${ARCHIVED}"'"
    }
  }'

echo
