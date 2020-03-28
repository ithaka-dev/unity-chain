#!/usr/bin/env bash
set -ex

cargo run -- \
  --base-path=/tmp/alice-node \
  --chain=./chain/raw.json \
  --port 30333 \
  --ws-port 9944 \
  --rpc-port 9933 \
  --name AliceNode \
  --validator
