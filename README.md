# Experiment in cross-compiling OpenSSL for armv7

Run `scripts/build.sh`.

Currently it fails due to undefined symbols like `__atomic_load`.
Zig has this functions here:
<https://github.com/ziglang/zig/blob/master/lib/compiler_rt/atomics.zig>
But somehow they are not linked.

There is a related issue about preventing clang from emitting atomic operations in OpenSSL at <https://github.com/openssl/openssl/issues/16551>
Zig build issue without cargo-zigbuild is at <https://github.com/openssl/openssl/issues/20490>
