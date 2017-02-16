" Neomake
let g:neomake_javascript_enabled_makers = ['eslint']
" For now. This is kind of a problem.
let g:neomake_javascript_eslint_exe = '/Users/matt/.nodenv/versions/6.9.4/bin/eslint'

nmap <Leader><Space>o :lopen<CR>      " open location window
nmap <Leader><Space>c :lclose<CR>     " close location window
nmap <Leader><Space>, :ll<CR>         " go to current error/warning
nmap <Leader><Space>n :lnext<CR>      " next error/warning
nmap <Leader><Space>p :lprev<CR>      " previous error/warning

" Deoplete
let g:deoplete#enable_at_startup = 1

" deoplete-ternjs
" -- switch to a local tern install if it exists
"function! StrTrim(txt)
"  return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
"endfunction
"
"let g:tern_path = StrTrim(system('PATH=$(npm bin):$PATH && which tern'))
"if g:tern_path != 'tern not found'
"  let g:deoplete#sources#ternjs#tern_bin = g:tern_path
"endif

let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [ 'tern#Complete' ]

let g:airline_theme='oceanicnext'
