" fzf
nnoremap <leader>, :Files<CR>
nnoremap <leader>b :Buffers<CR>

" Golang
au FileType go nmap <leader>gb :GoBuild<CR>
au FileType go nmap <leader>gt :GoTest<CR>

let g:go_auto_type_info = 1
let g:go_fmt_command = "goimports"

