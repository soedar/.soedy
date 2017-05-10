" Airlines
let g:airline_powerline_fonts = 1

" Ctrlp
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g "" --ignore .git'

nnoremap <leader>, :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
"nnoremap <leader>pm :CtrlPMRU<CR>

" Golang
au FileType go nmap <leader>gb <Plug>(go-install)

let g:go_auto_type_info = 1
let g:go_fmt_command = "goimports"

" Gutentags
" Until there is fugitive integration, store all the tag files
" centrally
let g:gutentags_cache_dir = "~/.tags"
