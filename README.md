# Hktvmall Scraper API

[![Oxylabs promo code](https://user-images.githubusercontent.com/129506779/250792357-8289e25e-9c36-4dc0-a5e2-2706db797bb5.png)](https://oxylabs.go2cloud.org/aff_c?offer_id=7&aff_id=877&url_id=112)

Oxylabs' [Hktvmall Scraper](https://oxylabs.io/products/scraper-api/ecommerce/hktvmall?utm_source=github&utm_medium=repositories&utm_campaign=product) is a data gathering solution allowing you to extract real-time information from an Hktvmall website effortlessly. This brief guide showcases how Hktvmall Scraper works, along with code examples to help you better understand how to use it hassle-free.

### How it works

You can get Hktvmall results by providing your own URLs to our service. We can return the HTML for any page you like.

#### Python code example

The example below illustrates how you can get HTML of Hktvmall page.

```python
import requests
from pprint import pprint

# Structure payload.
payload = {
    'source': 'universal_ecommerce',
    'url': 'https://www.hktvmall.com/hktv/en/supermarket/bulk-purchase/main/search?q=%3arelevance%3astreet%3amain%3acategory%3aaa11030000000'
}

# Get response.
response = requests.request(
    'POST',
    'https://realtime.oxylabs.io/v1/queries',
    auth=('user', 'pass1'),
    json=payload,
)

# Instead of response with job status and results url, this will return the
# JSON response with the result.
pprint(response.json())
```
Find code examples for other programming languages [**here**](https://github.com/oxylabs/hktvmall-scraper/tree/main/code%20examples)

#### Output Example
```json
{
  "results": [
    {
      "content": "<!DOCTYPE html>\n<html lang=\"en\">\n<head >\n\n    <title>Accelerator Title</title>\n\n    <script>\r\n    va ... </html>",
      "created_at": "2024-02-20 12:46:09",
      "updated_at": "2024-02-20 12:46:12",
      "page": 1,
      "url": "https://www.hktvmall.com/hktv/en/supermarket/bulk-purchase/main/search?q=%3arelevance%3astreet%3amain%3acategory%3aaa11030000000",
      "job_id": "7165688077724170241",
      "status_code": 200
    }
  ]
}
```
Utilize our Hktvmall Scraper to seamlessly pull public data from any Hktvmall webpage. Gather the essential product intel you need, whether that be pricing, customer feedback, or detailed product descriptions, to enhance your market study and outpace your rivals. For any inquiries, please touch base with our support staff through live chat or drop us an email at hello@oxylabs.io.