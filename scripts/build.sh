#!/usr/bin/env bash
set -euo pipefail

unset RUSTFLAGS

if ! zig version >/dev/null 2>&1; then
	# Download Zig
	rm -fr zig-linux-x86_64-0.10.1 zig-linux-x86_64-0.10.1.tar.xz
	wget https://ziglang.org/download/0.10.1/zig-linux-x86_64-0.10.1.tar.xz
	tar xf zig-linux-x86_64-0.10.1.tar.xz
	export PATH="$PATH:$PWD/zig-linux-x86_64-0.10.1"
fi

if ! cargo-zigbuild --version >/dev/null 2>&1; then
	cargo install cargo-zigbuild
fi

TARGET=armv7-unknown-linux-musleabi
rustup target add "$TARGET"

cargo-zigbuild rustc --target "$TARGET"
