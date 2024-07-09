#!/bin/bash

set -e

kubectl -n default wait deployment -l app=simple-web --for condition=available