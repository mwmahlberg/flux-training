#!/bin/bash

set -e

stat /root/mycluster/clusters/killercoda/podinfo/helm-repo.yaml

git ls-files --other --exclude-standard --exit-code

if [[ $(git ls-files --other --exclude-standard) ]]; then exit 1; fi

kubectl get helmrepositories.source.toolkit.fluxcd.io podinfo