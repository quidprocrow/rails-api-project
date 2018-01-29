TOKEN="BAhJIiVhZjViN2NhNjUwZWUyY2M2OTEzYmYzMGRkZDA4ZDg3NQY6BkVG--75a9a2cce7fd05924e8fbadab6db08a2da2033f3"
curl "http://localhost:4741/lists"  \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"
