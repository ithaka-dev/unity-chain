#!/usr/bin/env bash
set -ex

# Alice keys for Aura
curl http://127.0.0.1:9933 -H "Content-Type:application/json;charset=utf-8" \
--data-binary @- << EOF
{
    "jsonrpc":"2.0",
    "id":1,
    "method":"author_insertKey",
    "params": [
        "aura",
        "marble crisp cover huge yellow quick warm pudding spatial engage unfair million",
        "0xb0e396819f644dcb7c9c6ba0bdf3acd6b3bf7faa8394ec4e49948906efce482c"
    ]
}
EOF

# Alice's keys for GRANDPA
curl http://127.0.0.1:9933 -H "Content-Type:application/json;charset=utf-8" \
--data-binary @- << EOF
{
    "jsonrpc":"2.0",
    "id":1,
    "method":"author_insertKey",
    "params": [
      "gran",
      "marble crisp cover huge yellow quick warm pudding spatial engage unfair million",
      "0xe7988839e659db69ae9ad08c3ef2ccabba44236024a039ebad83bd8fc75dccfb"
    ]
}
EOF
