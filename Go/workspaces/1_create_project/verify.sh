#!/bin/bash

set -e

go env > /root/goenv

pushd /root/mycoolapp

go run main.go &> filename

popd
