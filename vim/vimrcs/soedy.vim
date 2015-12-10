syntax on
set history=100

" Tabs
set tabstop=4
set softtabstop=4
set expandtab

" Indent
set autoindent
set smartindent

set wrap

" Editor enhancements
colorscheme Tomorrow-Night

" Make vim have no background
highlight Normal ctermbg=none
highlight NonText ctermbg=none

let mapleader=","
set number
set cursorline

set wildmenu
set lazyredraw
set showmatch
set laststatus=2

noremap <leader>p :setlocal paste!<cr>

" There should always be 10 up and down of cursor
set scrolloff=10

" Visually select last inserted text
nnoremap gv `[v`]

" Search related
" Search as you type
set incsearch

" Highlight search results
set hlsearch

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Clear highlight
nnoremap <leader><CR> :nohlsearch<CR>

" Navigate long lines using jk
noremap j gj
noremap k gk

" Split shortcut
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>

" New split
nnoremap <leader>sp :sp<CR>
nnoremap <leader>sv :vsp<CR>

" Fold
set foldenable
set foldlevelstart=10
set foldmethod=syntax
nnoremap <space> za

" Default split to below and right
set splitbelow
set splitright

" Escape is too far away
nnoremap <leader>z ZZ
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>

" Tags
nnoremap <leader>] <C-]>
nnoremap <leader>[ <C-T>

" Vertical Line at 80
highlight ColorColumn ctermbg=94
set colorcolumn=80

" Share clipboard with OSX
set clipboard=unnamed

" Buffers
set hidden

" Swap files
set nobackup
set noswapfile
set nowritebackup
