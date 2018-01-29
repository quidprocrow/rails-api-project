#!/bin/bash
ID="4" CONTENT="Time to test lists!!" ARCHIVED="Y" LIST="5" TOKEN="BAhJIiViZmUzYTdiNjdlNjZlOTEzZDY5MjBmMmU5YjhiZWQ3NwY6BkVG--3e8f1c12ccc5e029db06a01202693240fb3be566"
curl "http://localhost:4741/items/{$ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
    --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "item": {
      "content": "'"${CONTENT}"'",
      "archived": "'"${ARCHIVED}"'",
      "list_id": "'"${LIST}"'"
    }
  }'

echo
