curl --user user:pass \
'https://realtime.oxylabs.io/v1/queries' \
-H "Content-Type: application/json" \
-d '{"source": "universal_ecommerce", "url": "https://www.hktvmall.com/hktv/en/supermarket/bulk-purchase/main/search?q=%3arelevance%3astreet%3amain%3acategory%3aaa11030000000"}'