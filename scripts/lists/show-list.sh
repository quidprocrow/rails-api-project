ID="5" TOKEN="BAhJIiUyOGE5NWYwOGZjZDIyOWJkMmI3OWM0YjdmNzQzNDVjMQY6BkVG--ff74e49b0cb2d81b66742ff3b7807c6f8410ce2e"
curl "http://localhost:4741/lists/${ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json"\
  --header "Authorization: Token token=${TOKEN}"
