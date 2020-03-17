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
