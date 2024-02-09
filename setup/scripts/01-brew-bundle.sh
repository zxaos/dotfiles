#!/usr/bin/env bash

readonly prefs=.setupstyle.sh

cd "$(dirname "$0")/.." || exit 1
if [ -f "$prefs" ]; then
    # shellcheck source=.setupstyle.sh
    . "$prefs"
fi

if [ -z "$setupstyle" ]; then
    read -r -p "Use which template for Brewfile? (home | work): " setupstyle
    echo "setupstyle=${setupstyle}" > "$prefs"
fi

brewtarget="Brewfile-${setupstyle}"
if [ -f "${brewtarget}" ]; then
    brew bundle --file "${brewtarget}"
else
    rm .brewstyle.sh
    echo "Error: template '${setupstyle}' was not found"
    exit 1
fi
