#!/usr/bin/env bash

readonly prefs=.setupstyle.sh

cd "$(dirname "$0")/.." || exit 1
if [ -f "$prefs" ]; then
    # shellcheck source=.setupstyle.sh
    . "$prefs"
fi

if [ -z "$setupstyle" ]; then
    read -r -p "Use which template for Brewfile? (home | work | home-laptop): " setupstyle
    echo "setupstyle=${setupstyle}" > "$prefs"
fi

brewtarget="Brewfile-${setupstyle}"

if command -v brew 2>&1 >/dev/null; then
    qualifiedbrew=brew
elif command -v /opt/homebrew/bin/brew; then
    qualifiedbrew=/opt/homebrew/bin/brew
else
    echo "Can't find brew, you'll have to fix this manually"
    exit 1
fi

if [ -f "${brewtarget}" ]; then
    ${qualifiedbrew} bundle --file "${brewtarget}"
else
    rm .brewstyle.sh
    echo "Error: template '${setupstyle}' was not found"
    exit 1
fi
