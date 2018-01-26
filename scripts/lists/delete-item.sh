#!/bin/bash

ID="3"

curl "http://localhost:4741/lists/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
