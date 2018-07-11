#!/bin/sh
set -e
set -o pipefail
dpkg-scanpackages -m . >Packages
bzip2 -kf Packages
