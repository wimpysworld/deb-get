#!/usr/bin/env bash

REL_VER=$(grep "^export VERSION" deb-get | cut -d'"' -f2)
dch -v "${REL_VER}-1" --distribution=unstable "New upstream release."
dpkg-buildpackage --build=binary --no-check-builddeps --compression=gzip
