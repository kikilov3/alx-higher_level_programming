#!/bin/bash
response=$(curl -sw '%{http_code}' "$1")
status="${response:${#response}-3}"
if [ "$status" -eq 200 ]; then
  body=$(curl -s "$1")
  echo "$body"
fi
