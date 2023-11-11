#!/usr/bin/env bash

mkdir -p ~/.warp/themes
curl --output-dir ~/.warp/themes -LO https://raw.githubusercontent.com/catppuccin/warp/main/dist/catppuccin_latte.yml
curl --output-dir ~/.warp/themes -LO https://raw.githubusercontent.com/catppuccin/warp/main/dist/catppuccin_frappe.yml
curl --output-dir ~/.warp/themes -LO https://raw.githubusercontent.com/catppuccin/warp/main/dist/catppuccin_macchiato.yml
curl --output-dir ~/.warp/themes -LO https://raw.githubusercontent.com/catppuccin/warp/main/dist/catppuccin_mocha.yml
