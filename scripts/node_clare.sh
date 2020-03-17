#!/usr/bin/env bash
set -ex

./target/release/node-template \
  --base-path /tmp/clare-node \
  --chain ./chain/raw.json \
  --port 30335 \
  --ws-port 9946 \
  --rpc-port 9935 \
  --name ClareNode \
  --validator \
  --bootnodes /ip4/127.0.01/tcp/30333/p2p/$1