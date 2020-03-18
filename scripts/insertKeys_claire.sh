#!/usr/bin/env bash
set -ex

# Clare's keys for Aura
curl http://127.0.0.1:9935 -H "Content-Type:application/json;charset=utf-8" \
--data-binary @- << EOF
{
    "jsonrpc":"2.0",
    "id":1,
    "method":"author_insertKey",
    "params": [
      "aura",
      "fury fox devote mixed slush jar umbrella essence possible practice rookie average",
      "0x06da9910cfa6404fe61ed65ef51bf0662f571bdca33e97b081f5c7661bbb5b5d"
    ]
}
EOF

# Clare's keys for GRANDPA
curl http://127.0.0.1:9935 -H "Content-Type:application/json;charset=utf-8" \
--data-binary @- << EOF
{
    "jsonrpc":"2.0",
    "id":1,
    "method":"author_insertKey",
    "params": [
      "gran",
      "fury fox devote mixed slush jar umbrella essence possible practice rookie average",
      "0x2d4cba8d987d0fca5b7383a4c74605cfb6aa35321b95d03041de76aa5b928934"
    ]
}
EOF
