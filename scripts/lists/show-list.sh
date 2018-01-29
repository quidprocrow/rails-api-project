ID="3"
curl "http://localhost:4741/list/${ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json"\
  --header "Authorization: Token token=${TOKEN}"
