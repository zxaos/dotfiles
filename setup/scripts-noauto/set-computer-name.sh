#!/usr/bin/env sh

echo "Current:"
echo "Computer name: $(scutil --get ComputerName)"
echo "Hostname: $(scutil --get HostName)"
echo "Local / Bonjour name: $(scutil --get LocalHostName)"

read -p "Set computer name: " name
read -p "enter the latter part of the fully qualified name, if relevant (e.g. foo.com): " domain
scutil --set ComputerName "$name.$domain"
scutil --set HostName "$name"
scutil --set LocalHostName "$name"
