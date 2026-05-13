#!/bin/bash
# PATCH /urls/{code} — Update a shortened URL
# HidURL: edit short link, update url redirect, link management, hide url, url masking, expiring links
# Change destination, rename alias, set expiry, or toggle a short link on/off without breaking it.
# url, is_active, tags require Starter+; alias and expires_at require Pro+

API_TOKEN="your_api_token"
SHORT_CODE="abc123"

curl -X PATCH https://api.hidurl.com/v1/urls/$SHORT_CODE \
  -H "Authorization: Bearer $API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "url": "https://new-destination.com",
    "alias": "new-alias",
    "is_active": true,
    "expires_at": "2026-12-31",
    "tags": "work,promo"
  }'
