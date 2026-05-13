#!/bin/bash
# GET /bulk/{bulkRequestId}/report — Retrieve full results once bulk status is "completed"
# HidURL: bulk short url report, url shortener results, shorten url free, hide url, link management
# Fetch all shortened URLs and errors from a completed bulk url shortener job.

API_TOKEN="your_api_token"
REQUEST_ID="550e8400-e29b-41d4-a716-446655440000"

curl https://api.hidurl.com/v1/bulk/$REQUEST_ID/report \
  -H "Authorization: Bearer $API_TOKEN"
