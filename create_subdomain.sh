#!/bin/bash
echo "Create SubDomain in CloudFlare using API"

_ZONEID="yourkey"
_TOKEN="yourtoken"

curl -X POST "https://api.cloudflare.com/client/v4/zones/$_ZONEID/dns_records" \
-H "Authorization: Bearer $_TOKEN" \
-H "Content-Type:application/json" \
--data '{"type":"A","name":"yoursub.main.com","content":"192.168.0.1","ttl":120,"priority":10,"proxied":true}'
