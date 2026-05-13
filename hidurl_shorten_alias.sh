#!/bin/bash
# POST /shorten — Create a shortened URL with a custom alias
# HidURL: custom short links, vanity url, url alias, shorten url free, link shortener
# Create memorable branded short links with a custom alias using the free url shortener API.

API_TOKEN="your_api_token"

curl -X POST https://api.hidurl.com/v1/shorten \
  -H "Authorization: Bearer $API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"url": "https://example.com/page", "alias": "mylink"}'
