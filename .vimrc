# Basic VIM/NEOVIM Configuration

set nocompatible
syntax on

filetype plugin on
filetype indent on

set number
set ruler
set relativenumber

set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround
set scrolloff=8
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

let g:mapleader=' '

nmap <leader>fe <CMD>Ex<CR>
nmap <leader><tab><tab> <CMD>tabnew<CR>
nmap <leader><tab>] <CMD>tabnext<CR>
nmap <leader><tab>[ <CMD>tabprevious<CR>
nmap <leader><tab>c <CMD>tab term<CR>i

nnoremap j gj
nnoremap k gk
