#!/usr/bin/env zsh

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --no-update-default-toolchain --no-modify-path -c rust-analyzer

echo "(Note, path management should already have been handled by zsh profile)."

echo "Faking a homebrew install of rust..."
# Fake a homebrew install of rust
mkdir -p "$HOMEBREW_CELLAR/rust/HEAD/"
ln -s  "$CARGO_HOME/bin" "$HOMEBREW_CELLAR/rust/HEAD/bin"

# Install cargo plugins
cargo install cargo-watch
