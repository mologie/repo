#!/bin/sh
set -eo pipefail
dpkg-scanpackages -m pool >Packages
bzip2 -kf Packages
zstd -qf -19 Packages
