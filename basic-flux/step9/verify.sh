#!/bin/bash

set -e

kubectl wait deployment/podinfo --for condition=Available=True --for jsonpath='{.status.availableReplicas}'=2