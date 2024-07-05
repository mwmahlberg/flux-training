#!/bin/bash
set -e
find ./mycluster -type d -name .git | grep -q "."

pushd ./mycluster
git config --get user.name || exit 1
git config --get user.email || exit 1
popd