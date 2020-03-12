#!/bin/bash

set -e
COUNTER=0
for i in {1..10000}; do
  sleep 0.1
  curl -s --header "X-Vault-Token:  ${VAULT_TOKEN}" --request POST --data '{"plaintext": "dGhlIHF1aWNrIGJyb3duIGZveAo="}' http://localhost:8080/v1/transit/encrypt/app | grep -c "vault:v1"
  ((COUNTER=COUNTER+1))
  echo "counter: $COUNTER"
done