#!/bin/bash
# POST /shorten — Create a shortened URL on a custom branded domain (Pro+)
# HidURL: branded links, custom domain url shortener, white label link shortener, hide url
# Use your own domain to shorten and hide URLs — great for brand trust and link management.

API_TOKEN="your_api_token"

curl -X POST https://api.hidurl.com/v1/shorten \
  -H "Authorization: Bearer $API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"url": "https://example.com/product-launch", "domain": "go.yourcompany.com"}'
