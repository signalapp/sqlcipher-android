#!/bin/bash

set -e

SQLITE_DST=sqlcipher/src/main/jni/sqlcipher

rm -f $SQLITE_DST/sqlite3.c
rm -f $SQLITE_DST/sqlite3.h
rm -rf sqlcipher/src/main/jni/sqlcipher/android-libs
rm -rf sqlcipher-android/external-dependencies/sqlcipher/src/main/jni/sqlcipher/android-libs

cp external-dependencies/sqlite/sqlite3.c $SQLITE_DST
cp external-dependencies/sqlite/sqlite3.h $SQLITE_DST
cp -R external-dependencies/libcrypto sqlcipher/src/main/jni/sqlcipher/android-libs
cp -R external-dependencies/openssl-1.1.1t/include sqlcipher/src/main/jni/sqlcipher/android-libs

./gradlew clean assembleRelease publishToMavenLocal