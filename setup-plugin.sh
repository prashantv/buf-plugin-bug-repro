#!/usr/bin/env bash

set -euxo pipefail

install_to="$(realpath $(dirname ${BASH_SOURCE[0]})/bin)"
temp_dir="$(mktemp -d)"

mkdir -p "$install_to"

pushd "$temp_dir"
git clone --depth 100  https://github.com/grpc-ecosystem/grpc-gateway
cd grpc-gateway
go build -o "$install_to/protoc-gen-openapiv2" ./protoc-gen-openapiv2

