" Neomake
let g:neomake_javascript_enabled_makers = ['eslint']
" For now. Thi is kind of a problem.
let g:neomake_javascript_eslint_exe = '/Users/matt/.nodenv/versions/6.9.4/bin/eslint'

nmap <Leader><Space>o :lopen<CR>      " open location window
nmap <Leader><Space>c :lclose<CR>     " close location window
nmap <Leader><Space>, :ll<CR>         " go to current error/warning
nmap <Leader><Space>n :lnext<CR>      " next error/warning
nmap <Leader><Space>p :lprev<CR>      " previous error/warning
