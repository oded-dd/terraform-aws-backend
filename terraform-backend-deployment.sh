#!/bin/bash

terraform init \
  -backend=true \
  -backend-config="bucket=$1" \
  -backend-config="dynamodb_table=$1" \
  -backend-config="key=backend/tfstate" \
  -backend-config="encrypt=true" \
  -lock=false -force-copy \
  $2
