#!/bin/bash
TOKEN="BAhJIiViZmUzYTdiNjdlNjZlOTEzZDY5MjBmMmU5YjhiZWQ3NwY6BkVG--3e8f1c12ccc5e029db06a01202693240fb3be566"

curl "http://localhost:4741/sign-out" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"

echo
