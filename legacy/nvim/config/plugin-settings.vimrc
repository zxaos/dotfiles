" Neomake
let g:neomake_javascript_enabled_makers = ['eslint']
" For now. This is kind of a problem.
let g:neomake_javascript_eslint_exe = '/Users/matt/.nodenv/shims/eslint'

nmap <Leader><Space>o :lopen<CR>  " open location window
nmap <Leader><Space>c :lclose<CR> " close location window
nmap <Leader><Space>, :ll<CR>     " go to current error/warning
nmap <Leader><Space>n :lnext<CR>  " next error/warning
nmap <Leader><Space>p :lprev<CR>  " previous error/warning

" bind vinegar to \ so that + and - can resize instead
nmap \ <Plug>VinegarUp

" vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

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

let g:airline_theme='base16'
let g:airline#extensions#whitespace#mixed_indent_algo = 2
" Since use powerline symbols
let g:airline_powerline_fonts = 1
" By default, airline shows file format and encoding
" Remove it so buffer list has more space
let g:airline_section_y=''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab
