#!/bin/bash
# GET /bulk/{bulkRequestId}/status — Poll the processing status of a bulk request
# HidURL: bulk url shortener status, track bulk link creation, url shortener api, shorten url free
# Monitor the progress of your bulk URL shortening job in real time.

API_TOKEN="your_api_token"
REQUEST_ID="550e8400-e29b-41d4-a716-446655440000"

curl https://api.hidurl.com/v1/bulk/$REQUEST_ID/status \
  -H "Authorization: Bearer $API_TOKEN"
