#!/bin/bash

src=$1
dest=${2:-$HOME/kopie}

if [ ! -d "$src" ]; then
    echo "Error: $src is not a directory" >&2
    exit 1
fi

mkdir -p "$dest"

name=$(basename "$src")

tar -c -z -C "$src" -f "$dest/$name-$(date +%Y-%m-%d-%H%M).tar.gz" .

echo "Size: $(du -h "$dest/$name-$(date +%Y-%m-%d-%H%M).tar.gz" | cut -f1)"

if tar -tzf "$dest/$name-$(date +%Y-%m-%d-%H%M).tar.gz" > /dev/null; then
    echo "Check: OK"
else
    echo "Check: FAILED" >&2
    exit 2
fi
