let g:ale_linters = { 'rust': ['cargo', 'rust-analyzer'] }

" Rust
"   Use clippy if it's installed
let g:ale_rust_cargo_use_clippy = executable('cargo-clippy')
