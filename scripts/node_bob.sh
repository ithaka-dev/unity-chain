#!/usr/bin/env bash
set -ex

cargo run -- \
  --base-path /tmp/bob-node \
  --chain ./chain/raw.json \
  --port 30334 \
  --ws-port 9945 \
  --rpc-port 9934 \
  --name BobNode \
  --validator \
  --bootnodes /ip4/127.0.01/tcp/30333/p2p/$1