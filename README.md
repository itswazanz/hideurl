# HidURL API Examples — Free URL Shortener & Link Management

> **HidURL** is a free URL shortener that lets you shorten URLs, hide URLs, create branded short links, track clicks, and manage links at scale via a simple REST API.

[![API](https://img.shields.io/badge/API-REST-blue)](https://api.hidurl.com/v1)
[![License](https://img.shields.io/badge/license-MIT-green)](LICENSE)

---

## What is HidURL?

HidURL is a powerful **URL shortener** and **link management** platform. Whether you need to:

- **Shorten URL for free** — turn long links into clean, shareable short URLs
- **Hide URLs** — mask and cloak destination links for a cleaner user experience
- **Create branded short links** — use your own custom domain (e.g. `go.yourcompany.com`)
- **Track URL clicks** — get device, browser, and OS analytics per link
- **Bulk shorten URLs** — process hundreds of links at once via the API
- **Unshorten URLs** — safely reveal where a short link actually leads

This repository contains ready-to-run `curl` examples for every endpoint in the [HidURL REST API](https://hidurl.com).

---

## Quick Start

1. Get your free API key at [hidurl.com](https://hidurl.com)
2. Replace `your_api_token` in any script with your key
3. Run the script with `bash hidurl_shorten.sh`

**Base URL:** `https://api.hidurl.com/v1`

**Authentication:**

```bash
Authorization: Bearer your_api_token
```

---

## API Methods — Full Reference

| Script | Method | Endpoint | Description |
| --- | --- | --- | --- |
| [hidurl_shorten.sh](hidurl_shorten.sh) | `POST` | `/shorten` | Shorten a URL for free |
| [hidurl_shorten_alias.sh](hidurl_shorten_alias.sh) | `POST` | `/shorten` | Shorten with a custom alias / vanity URL |
| [hidurl_shorten_branded.sh](hidurl_shorten_branded.sh) | `POST` | `/shorten` | Shorten on a branded custom domain *(Pro+)* |
| [hidurl_bulk.sh](hidurl_bulk.sh) | `POST` | `/bulk` | Submit a bulk URL shortening job *(Bulk plan)* |
| [hidurl_bulk_status.sh](hidurl_bulk_status.sh) | `GET` | `/bulk/{id}/status` | Poll bulk job progress |
| [hidurl_bulk_report.sh](hidurl_bulk_report.sh) | `GET` | `/bulk/{id}/report` | Fetch results from a completed bulk job |
| [hidurl_urls_get.sh](hidurl_urls_get.sh) | `GET` | `/urls/{code}` | Get info about a shortened URL |
| [hidurl_urls_update.sh](hidurl_urls_update.sh) | `PATCH` | `/urls/{code}` | Edit destination, alias, tags, or expiry |
| [hidurl_urls_stats.sh](hidurl_urls_stats.sh) | `GET` | `/urls/{code}/stats` | Get click analytics for a short link *(Pro+)* |
| [hidurl_urls_delete.sh](hidurl_urls_delete.sh) | `DELETE` | `/urls/{code}` | Delete a shortened URL |
| [hidurl_unshorten.sh](hidurl_unshorten.sh) | `POST` | `/unshorten` | Expand / reveal a hidden short URL |

---

## Examples

### Shorten a URL for Free

```bash
curl -X POST https://api.hidurl.com/v1/shorten \
  -H "Authorization: Bearer your_api_token" \
  -H "Content-Type: application/json" \
  -d '{"url": "https://example.com/very-long-url"}'
```

**Response:**

```json
{
  "data": {
    "short_url": "https://hidurl.com/abc123",
    "short_code": "abc123",
    "original_url": "https://example.com/very-long-url",
    "created_at": "2025-01-28T12:00:00.000000Z"
  }
}
```

---

### Shorten with a Custom Alias (Vanity URL)

```bash
curl -X POST https://api.hidurl.com/v1/shorten \
  -H "Authorization: Bearer your_api_token" \
  -H "Content-Type: application/json" \
  -d '{"url": "https://example.com/page", "alias": "mylink"}'
```

---

### Hide a URL with a Branded Domain *(Pro+)*

```bash
curl -X POST https://api.hidurl.com/v1/shorten \
  -H "Authorization: Bearer your_api_token" \
  -H "Content-Type: application/json" \
  -d '{"url": "https://example.com/product-launch", "domain": "go.yourcompany.com"}'
```

---

### Bulk Shorten URLs

```bash
curl -X POST https://api.hidurl.com/v1/bulk \
  -H "Authorization: Bearer your_api_token" \
  -H "Content-Type: application/json" \
  -d '{"urls": [{"url": "https://example1.com"}, {"url": "https://example2.com"}]}'
```

---

### Unshorten / Reveal a Hidden URL

```bash
curl -X POST https://api.hidurl.com/v1/unshorten \
  -H "Authorization: Bearer your_api_token" \
  -H "Content-Type: application/json" \
  -d '{"url": "https://bit.ly/example"}'
```

---

### Get Click Stats for a Short Link *(Pro+)*

```bash
curl https://api.hidurl.com/v1/urls/abc123/stats \
  -H "Authorization: Bearer your_api_token"
```

---

## Features

- **Free URL shortener** — no credit card required to get started
- **Hide URLs** — cloak long or ugly links behind a clean short URL
- **Custom short links** — choose your own alias or vanity URL
- **Branded links** — shorten on your own domain for full brand consistency
- **URL click tracking** — monitor clicks, devices, browsers, and operating systems
- **Bulk URL shortener** — shorten thousands of links via a single API call
- **Link expiry** — set an expiration date on any short link
- **URL unshortener** — safely expand and inspect any short URL before clicking
- **Link management** — activate, deactivate, retarget, and tag your links anytime

---

## Rate Limits & Plan Features

| Feature | Free | Starter | Pro | Bulk |
| --- | --- | --- | --- | --- |
| Shorten URL for free | ✓ | ✓ | ✓ | ✓ |
| Custom alias / vanity URL | — | ✓ | ✓ | ✓ |
| Branded / custom domain | — | — | ✓ | ✓ |
| URL click tracking & analytics | — | — | ✓ | ✓ |
| Bulk URL shortener | — | — | — | ✓ |
| Link expiry (`expires_at`) | — | — | ✓ | ✓ |

When a rate limit is exceeded the API returns `429 Too Many Requests` with a `retry_after` field.

---

## Related Keywords

free url shortener · hide url · shorten url free · short link generator · url masking ·
custom short links · vanity url · branded links · bulk url shortener · url click tracking ·
url unshortener · link cloaking · url redirect · link management api · white label url shortener

---

## Support

- Email: [support@hidurl.com](mailto:support@hidurl.com)
- Phone: (888) 463-8689
- Website: [hidurl.com](https://hidurl.com)

---

*© 2026 HidURL. All rights reserved.*
