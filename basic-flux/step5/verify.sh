#!/bin/bash

STATUS=$(kubectl get ns flux-system -o go-template --template '{{.status.phase}}')
if [ "$STATUS" != "Active" ]; then
  echo "flux-system namespace is not ready"
  exit 1
fi

kubectl -n flux-system wait deployment --all --for condition=available || exit 1