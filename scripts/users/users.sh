#!/bin/bash
TOKEN="BAhJIiU5Y2VmYWU2ZDVkYzkwNTkyYTkwZDNjNGY0NjIyOWFhNwY6BkVG--8b086978076cf89623b97c31f2e8b2adca5a454d"
curl "http://localhost:4741/users" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
