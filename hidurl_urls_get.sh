#!/bin/bash
# GET /urls/{code} — Get information about a shortened URL
# HidURL: url info lookup, short link details, url shortener api, link tracker, hide url
# Retrieve metadata for any short link — clicks, status, tags, and original destination.

API_TOKEN="your_api_token"
SHORT_CODE="abc123"

curl https://api.hidurl.com/v1/urls/$SHORT_CODE \
  -H "Authorization: Bearer $API_TOKEN"
