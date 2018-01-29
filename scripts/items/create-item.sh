#!/bin/bash
LIST="5" CONTENT="I am a content!" ARCHIVED="N" TOKEN="BAhJIiViZmUzYTdiNjdlNjZlOTEzZDY5MjBmMmU5YjhiZWQ3NwY6BkVG--3e8f1c12ccc5e029db06a01202693240fb3be566"

curl "http://localhost:4741/items/" \
  --include \
  --request POST \
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
