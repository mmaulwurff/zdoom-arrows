#!/bin/bash

# Usage:
#
# From project directory:
# ./scripts/build.sh

set -e

cd arrows

for d in *
do
    file_name="../arrow-$d.pk3"
    echo "Building $file_name..."

    rm -f "$file_name"
    zip -0 -j "$file_name" ./$d/*.txt
done
