#!/bin/bash
ID="10" CONTENT="Time to test lists!!" ARCHIVED="Y" LIST="12" TOKEN="BAhJIiU3MTBiMDRhMGI4YTBmMDFiNTVlYzJkODEzZjNjMDI5MgY6BkVG--7ae05eccb91d45960818efc54e297c9f2c7e42b4"
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
