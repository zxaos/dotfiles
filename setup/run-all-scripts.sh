#!/usr/bin/env bash
set -e

for i in scripts/*.sh; do
    echo "== Running $i =="
    "$i"
    echo -e "\n"
done
