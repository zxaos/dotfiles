setlocal noexpandtab
setlocal copyindent
setlocal preserveindent
setlocal softtabstop=0
setlocal tabstop=2
setlocal shiftwidth=2

setlocal textwidth=120
setlocal colorcolumn=80

autocmd! BufWritePost,BufEnter *.js Neomake


