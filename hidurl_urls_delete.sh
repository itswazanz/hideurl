#!/bin/bash
# DELETE /urls/{code} — Delete a shortened URL
# HidURL: delete short link, remove url redirect, link management, free url shortener, hide url
# Permanently remove a shortened URL and stop all redirects to the destination.

API_TOKEN="your_api_token"
SHORT_CODE="abc123"

curl -X DELETE https://api.hidurl.com/v1/urls/$SHORT_CODE \
  -H "Authorization: Bearer $API_TOKEN"
