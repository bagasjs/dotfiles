set nocompatible
filetype off
syntax on

set noerrorbells
set visualbell
set t_vb=

set number
set relativenumber
set numberwidth=6

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab 

set scrolloff=8
set updatetime=50

set nowrap
set noswapfile 
set nohlsearch 
set incsearch
set clipboard=unnamed,unnamedplus
set nobackup
set notermguicolors
set undofile

let g:mapleader = " "
let g:maplocalleader = " "

nnoremap j gj
nnoremap k gk
nnoremap <leader>fe <CMD>Explore<CR>

nnoremap <M-j> <cmd>m .+1<cr>==
nnoremap <M-k> <cmd>m .-2<cr>==
inoremap <M-j> <esc><cmd>m .+1<cr>==gi
inoremap <M-k> <esc><cmd>m .-2<cr>==gi 
vnoremap <M-j> :m '>+1<cr>gv=gv
vnoremap <M-k> :m '<-2<cr>gv=gv
nnoremap - $

vnoremap < <gv
vnoremap > >gv
xnoremap < <gv
xnoremap > >gv

nnoremap <leader><tab><tab> <cmd>tabnew<cr>
nnoremap <leader><tab>d <cmd>tabclose<cr>
nnoremap <leader><tab>] <cmd>tabnext<cr>
nnoremap <leader><tab>[ <cmd>tabprevious<cr>
nnoremap <leader><tab>t <CMD>tabnew<CR><CMD>terminal<CR>
tnoremap <ESC>", <C-\\><C-n>


colorscheme habamax
