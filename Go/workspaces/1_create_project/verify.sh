#!/bin/bash

# To enable debug mode, uncomment the following lines
# exec 19>logfile
# BASH_XTRACEFD=19

set -ex



stat ./go/pkg/mod/golang.org/x/example/hello@v0.0.0-20240716161537-39e772fc2670/hello.go || exit 1
stat ./mycoolapp/main.go || exit 1
stat ./mycoolapp/go.mod || exit 1
stat ./mycoolapp/go.sum || exit 1

pushd ./mycoolapp

/usr/local/go/bin/go run main.go || exit 1

popd
