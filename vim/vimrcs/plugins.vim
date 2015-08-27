" Airlines
let g:airline_powerline_fonts = 1

" Ctrlp
let g:ctrlp_user_command = 'ag %s -i --follow --nocolor --nogroup --hidden --ignore .git -g ""'
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

nnoremap <leader>, :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
"nnoremap <leader>pm :CtrlPMRU<CR>

" Fugitive
nnoremap <leader>g :Git 
nnoremap <leader>gst :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>

" Golang
au FileType go nmap <leader>gb <Plug>(go-install)

let g:go_auto_type_info = 1
