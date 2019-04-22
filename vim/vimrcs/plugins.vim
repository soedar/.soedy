" fzf
nnoremap <leader>, :Files<CR>
nnoremap <leader>b :Buffers<CR>

let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'

let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

set completeopt+=noselect

"Gutentags
let g:gutentags_cache_dir = "~/.tags"

" Golang
au FileType go nmap <leader>gb :GoBuild<CR>
au FileType go nmap <leader>gt :GoTest<CR>

let g:go_auto_type_info = 1
let g:go_fmt_command = "goimports"

