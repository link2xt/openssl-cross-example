# Experiment in cross-compiling OpenSSL for armv7

Run `scripts/build.sh`.

Currently it fails due to undefined symbols like `__atomic_load`.
There is no libatomic in zig toolchains to link against.

There is a related issue about preventing clang from emitting atomic operations in <https://github.com/openssl/openssl/issues/16551>
