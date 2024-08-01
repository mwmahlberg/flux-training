#!/bin/bash

set -e

bash -ec "pushd /root/mycoolapp; go run main.go; popd" || exit 1
