" roughly match the settings xo uses by default
setlocal noexpandtab
setlocal tabstop=4
" sw 0 just uses ts
setlocal shiftwidth=0
setlocal textwidth=90
setlocal colorcolumn=80

let b:ale_linters = ['xo']
let b:ale_fixers = ['remove_trailing_lines', 'trim_whitespace', 'xo']
let b:ale_fix_on_save=1
