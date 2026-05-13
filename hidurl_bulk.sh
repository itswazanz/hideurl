#!/bin/bash
# POST /bulk — Submit a bulk shortening request (Bulk plan required)
# HidURL: bulk url shortener, shorten multiple urls, mass link shortener, hide url in bulk
# Shorten hundreds of URLs at once — ideal for marketing campaigns and bulk link management.
# Returns a request_id immediately; processing is async.
# Use hidurl_bulk_status.sh to poll, then hidurl_bulk_report.sh for results.

API_TOKEN="your_api_token"

curl -X POST https://api.hidurl.com/v1/bulk \
  -H "Authorization: Bearer $API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "urls": [
      { "url": "https://example1.com" },
      { "url": "https://example2.com", "alias": "ex2link", "domain": "go.yourcompany.com" },
      { "url": "https://example3.com", "alias": "launch", "domain": "go.yourcompany.com", "expires_at": "2026-12-31" }
    ]
  }'
