" Airlines
let g:airline_powerline_fonts = 1

" Ctrlp
"let g:ctrlp_user_command = 'ag %s -i --follow --nocolor --nogroup --hidden --ignore .git -g ""'
"let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files --exclude-standard -co']
let g:ctrlp_user_command = ['ag %s --files-with-matches -g ""', '.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

nnoremap <leader>, :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
"nnoremap <leader>pm :CtrlPMRU<CR>

" Silversearcher
nnoremap <leader>f :Ag 

" Golang
au FileType go nmap <leader>gb <Plug>(go-install)

let g:go_auto_type_info = 1
let g:go_fmt_command = "goimports"

" Gundo
nnoremap <leader>u :GundoToggle<CR>
