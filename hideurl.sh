#!/bin/bash
# HidURL — Free URL Shortener & URL Hider CLI
# hide url, shorten url free, url masking, short link generator, url shortener api
# Shorten and hide any URL from the command line using the HidURL REST API.

API_TOKEN="your_api_token_here"
API_URL="https://api.hidurl.com/v1/shorten"

validate_url() {
    local url=$1
    if [[ ! "$url" =~ ^https?:// ]]; then
        echo -e "\e[31mError: Please enter a valid URL starting with http:// or https://\e[0m"
        exit 1
    fi
}

echo -e "\n\e[1;32m===== HidURL — Free URL Shortener & Link Hider =====\e[0m"
echo -e "\e[90m  hide url · shorten url free · url masking · short link generator\e[0m\n"

echo -n "Enter the URL to shorten and hide: "
read url

validate_url "$url"

echo -e "\nShortening and hiding your URL, please wait...\n"

response=$(curl -s -X POST "$API_URL" \
    -H "Authorization: Bearer $API_TOKEN" \
    -H "Content-Type: application/json" \
    -d "{\"url\": \"$url\"}")

# Check for errors
if echo "$response" | grep -q '"error"'; then
    echo -e "\e[31mError from API:\e[0m"
    echo "$response"
    exit 1
fi

# Check for rate limit
if echo "$response" | grep -q '"retry_after"'; then
    echo -e "\e[31mRate limit exceeded. Please try again later.\e[0m"
    exit 1
fi

# Parse response
short_url=$(echo "$response" | grep -o '"short_url":"[^"]*"' | cut -d'"' -f4)

if [[ -z "$short_url" ]]; then
    echo -e "\e[31mFailed to shorten URL. Response:\e[0m"
    echo "$response"
    exit 1
fi

echo -e "\e[32mOriginal URL :\e[0m $url"
echo -e "\e[32mShort / Hidden URL:\e[0m $short_url"
echo -e "\n\e[90mPowered by HidURL.com — free url shortener & url hider\e[0m\n"
