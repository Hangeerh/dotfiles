set nocompatible
filetype on
filetype plugin on
filetype indent on

syntax on
set number
set relativenumber
set cursorline

set expandtab
set shiftwidth=4
set tabstop=4

set incsearch
set ignorecase
set smartcase

set nobackup
set scrolloff=10
set nowrap

set showmode
set showmatch
set hlsearch

set history=1000

set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

let mapleader=" "

nnoremap <leader>nh <cmd>nohl<CR>

nnoremap <leader>to <cmd>tabnew<CR>
nnoremap <leader>tx <cmd>tabclose<CR>
nnoremap <leader>tn <cmd>tabnext<CR>
nnoremap <leader>tp <cmd>tabprevious<CR>

nnoremap <leader>sh <cmd>split<CR>
nnoremap <leader>sv <cmd>vsplit<CR>
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
