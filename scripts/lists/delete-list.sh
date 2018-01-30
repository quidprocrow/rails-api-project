#!/bin/bash

ID="1" TOKEN="BAhJIiVhNDE3ZmMyMjhmZjMzZDVhMWMyMjg4Yzc0MTdkOTU2YQY6BkVG--63189e45a27a03ad04c3c5e5eb38b48a7240951a"

curl "http://localhost:4741/lists/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
    --header "Authorization: Token token=${TOKEN}" \
