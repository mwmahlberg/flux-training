#!/bin/bash

set -e
set -x



stat ./go/pkg/mod/golang.org/x/example/hello@v0.0.0-20240716161537-39e772fc2670/hello.go || exit 1
stat ./mycoolapp/main.go || exit 1
stat ./mycoolapp/go.mod || exit 1
stat ./mycoolapp/go.sum || exit 1

pushd ./mycoolapp

go run main.go || exit 1

popd
