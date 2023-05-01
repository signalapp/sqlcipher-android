# External Dependencies

These are the external files needed to build sqlcipher-android. They're fetched from various places.

## `libcrypto`
These files are retrieved by building [android-database-sqlcipher](https://github.com/sqlcipher/android-database-sqlcipher) and copying them from `android-database-sqlcipher/src/main/external/android-libs`.


## `sqlite`
These files are retrieved by building [android-database-sqlcipher](https://github.com/sqlcipher/android-database-sqlcipher) and copying them from `android-database-sqlcipher/src/main/cpp`.


## `openssl-1.1.1t`
Downloaded from https://github.com/openssl/openssl/releases/tag/OpenSSL_1_1_1t

We only need the `include` directory, so the rest of the files are deleted for cleanliness.

This version was chosen because this is what SQLCipher currently compiles against.