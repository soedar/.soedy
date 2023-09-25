" fzf
nnoremap <leader>, :Files<CR>
nnoremap <leader>b :Buffers<CR>

let $FZF_DEFAULT_COMMAND="rg --files --hidden --follow --smart-case --glob '!.git'"
