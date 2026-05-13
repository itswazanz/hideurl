#!/bin/bash
# GET /urls/{code}/stats — Get detailed statistics for a shortened URL (Pro plan required)
# HidURL: url click tracking, short url analytics, link statistics, url shortener with tracking, hide url
# See total clicks, device breakdown, browser stats, and OS data for any shortened link.

API_TOKEN="your_api_token"
SHORT_CODE="abc123"

curl https://api.hidurl.com/v1/urls/$SHORT_CODE/stats \
  -H "Authorization: Bearer $API_TOKEN"
