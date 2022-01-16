syntax on
filetype plugin indent on
set relativenumber
set number
set nowrap
set viminfo+=n~/.cache/nvim/viminfo
set laststatus=2
set shortmess+=c

set tabstop=3
set shiftwidth=3
set expandtab
set foldmethod=manual

colorscheme elflord

nnoremap <C-H> <C-w><C-h>
nnoremap <C-J> <C-w><C-j>
nnoremap <C-K> <C-w><C-k>
nnoremap <C-L> <C-w><C-l>

let maplocalleader = ","
let mapleader = "\<Space>"

lua << EOF
require("lspconfig").pylsp.setup{}
EOF

set completeopt-=preview

autocmd Filetype python setlocal omnifunc=v:lua.vim.lsp.omnifunc
