" roughly match the settings prettier uses by default
setlocal expandtab
setlocal tabstop=2

" sw 0 just uses ts
setlocal shiftwidth=0
setlocal textwidth=90
setlocal colorcolumn=80

let b:ale_fixers = ['terraform']
let b:ale_fix_on_save=1
