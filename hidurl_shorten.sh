#!/bin/bash
# POST /shorten — Create a shortened URL
# HidURL: free url shortener, hide url, shorten url free, short link generator
# Use this to shorten long URLs, mask links, and create clean short links instantly.

API_TOKEN="your_api_token"

curl -X POST https://api.hidurl.com/v1/shorten \
  -H "Authorization: Bearer $API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"url": "https://example.com/very-long-url"}'
