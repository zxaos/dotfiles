" Set space as leader. But do it by remapping to default leader \ so it appears in showcmd
map <Space> <Leader>

" Greatly improve buffer navigation
nnoremap gb :ls<CR>:buffer<Space>

" Quick-reload settings files
command! Vimrc source $MYVIMRC
