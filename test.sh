#!/bin/bash

set -e

for i in {1..10000}; do
  sleep 0.1
  VAULT_ADDR=http://localhost:8080 VAULT_TOKEN=${VAULT_TOKEN} vault policy read default
done