" neovim config
syntax on
filetype plugin indent on

set relativenumber
set number
set nowrap
set viminfo+=n~/.cache/nvim/viminfo
set laststatus=2
set shortmess+=c
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set foldmethod=manual
set mouse=a

let maplocalleader = ","
let mapleader = "\<Space>"

" terminal mode config
augroup termcmd

  silent! autocmd TermOpen term://*
    \ tnoremap <buffer> <C-w>h <C-\><C-n><C-w><C-h>
  silent! autocmd TermOpen term://*
    \ tnoremap <buffer> <C-w>j <C-\><C-n><C-w><C-j>
  silent! autocmd TermOpen term://*
    \ tnoremap <buffer> <C-w>k <C-\><C-n><C-w><C-k>
  silent! autocmd TermOpen term://*
    \ tnoremap <buffer> <C-w>l <C-\><C-n><C-w><C-l>

  silent! autocmd TermEnter term://* 
    \ setlocal nonumber norelativenumber

  silent! autocmd TermLeave term://* 
    \ setlocal number relativenumber

  silent! autocmd WinEnter,BufEnter,TermOpen term://*
    \ startinsert

  silent! autocmd WinLeave,BufLeave term://*
    \ stopinsert

augroup END

" plugins settings
lua require('l-plugins')

" language server pprotocol configurations
lua require('l-lsp')
