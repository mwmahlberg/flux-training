#!/bin/bash

set -e
pushd /root/mycoolapp

stat /root/mycoolapp/main.go || exit 1

popd