#!/bin/bash

set -ex

RUSTC_WRAPPER=sccache
FEATURES="lua53"

cd testcrate

cargo build --target wasm32-wasi --features="${FEATURES}"

