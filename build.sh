#!/usr/bin/env sh

SPEEDTEST_VERSION=0.0.11


# Download
rm -rf speedtest-rs-* ${SPEEDTEST_VERSION}.tar.gz
wget https://github.com/nelsonjchen/speedtest-rs/archive/${SPEEDTEST_VERSION}.tar.gz
tar xf ${SPEEDTEST_VERSION}.tar.gz
cd speedtest-rs-${SPEEDTEST_VERSION}

# Build
cargo build --target=wasm32-wasi --release
cp target/wasm32-unknown-wasi/release/speedtest-rs.wasm .

# Clean up
cd ..
rm -rf speedtest-rs-* ${SPEEDTEST_VERSION}.tar.gz
