#!/usr/bin/env bash
set -ex

# Bob's keys for Aura
curl http://127.0.0.1:9934 -H "Content-Type:application/json;charset=utf-8" \
--data-binary @- << EOF
{
    "jsonrpc":"2.0",
    "id":1,
    "method":"author_insertKey",
    "params": [
      "aura",
      "clean upper wool melt current summer pride fuel sudden enlist swarm cram",
      "0x705687ba7ccd43e2c192185e80b3045bb8ab47dbbf8e8cf4a6a37b9d3cb95c22"
    ]
}
EOF

# Bob's keys for GRANDPA
curl http://127.0.0.1:9934 -H "Content-Type:application/json;charset=utf-8" \
--data-binary @- << EOF
{
    "jsonrpc":"2.0",
    "id":1,
    "method":"author_insertKey",
    "params": [
      "gran",
      "clean upper wool melt current summer pride fuel sudden enlist swarm cram",
      "0x5a9b9bec588531188fb362aca065730ded3dcd1c9529d33d5b66f1710bfdec88"
    ]
}
EOF
