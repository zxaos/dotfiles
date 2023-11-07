#!/usr/bin/env bash

for i in scripts/*.sh; do
    echo "== Running $i =="
    "$i"
    echo -e "\n"
done
