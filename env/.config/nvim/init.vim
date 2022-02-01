" neovim config
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
set mouse=a

let maplocalleader = ","
let mapleader = "\<Space>"

" window navigation
nnoremap <C-H> <C-w><C-h>
nnoremap <C-J> <C-w><C-j>
nnoremap <C-K> <C-w><C-k>
nnoremap <C-L> <C-w><C-l>

" terminal mode config
augroup term_cmds
   autocmd!
   silent! autocmd TermOpen term://* 
      \ setlocal nonumber norelativenumber | 
      \ startinsert
   "silent! autocmd TermEnter term://*
   "silent! autocmd TermLeave term://* 
augroup END

" plugins settings
lua require('plugins')

