#!/bin/bash

set -e

kubectl -n mynamespace wait deployment -l app=simple-web --for condition=available