#!/bin/bash

set -ex

RUSTC_WRAPPER=sccache
FEATURES="lua53"

cargo build -vv --manifest-path testcrate/Cargo.toml --target wasm32-wasi --features="${FEATURES}"

