#!/bin/bash

set -e

geth init --datadir /data genesis.json

echo $GENESIS_VALIDATOR_PRIVATE_KEY > /data/nodekey
chmod 0600 /data/nodekey

geth --datadir /data --config static-nodes.toml --nodiscover --mine
