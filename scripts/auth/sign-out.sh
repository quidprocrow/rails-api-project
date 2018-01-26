#!/bin/bash
TOKEN="BAhJIiVmMmQ0Nzg1YzM4YTQxNGQ0MzI2MTA3ZDMxN2ExOGE4MAY6BkVG--3bdda94247ad89568ec7e62370cf5b006328eaff"
curl "http://localhost:4741/sign-out" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"

echo
