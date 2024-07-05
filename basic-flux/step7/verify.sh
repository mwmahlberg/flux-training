#!/bin/bash

set -e

stat /root/mycluster/clusters/killercoda/podinfo/helm-release.yaml

if [[ $(git ls-files --other --exclude-standard) ]]; then exit 1; fi

kubectl wait deployment/podinfo --for condition=Available=True --for jsonpath='{.status.availableReplicas}'=2