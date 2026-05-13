#!/bin/bash
# POST /unshorten — Resolve a shortened URL to its final destination
# HidURL: unshorten url, url expander, reveal hidden url, link preview, url unmasker, url checker
# Safely expand any short link from bit.ly, tinyurl, hidurl and others to see where it leads.

API_TOKEN="your_api_token"

curl -X POST https://api.hidurl.com/v1/unshorten \
  -H "Authorization: Bearer $API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"url": "https://bit.ly/example"}'
