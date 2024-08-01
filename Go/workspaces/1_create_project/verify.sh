#!/bin/bash

set -e
pushd /root/mycoolapp

go run main.go || exit 1

popd