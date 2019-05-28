call plug#begin('~/.vim/plugged')
Plug 'Raimondi/delimitMate'
Plug 'tomasr/molokai'
call plug#end()

set nocompatible
filetype plugin indent on

syntax enable
syntax on

set number
set ffs=unix,mac,dos
set backspace=indent,eol,start

let mapleader=" "
set shortmess=atI

set t_Co=256
colorscheme molokai
highlight Normal ctermbg=none
highlight NonText ctermbg=none

set autoindent
set cindent

set tabstop=8
set softtabstop=4
set shiftwidth=4
set noexpandtab

set ignorecase
set smartcase
set hlsearch
set incsearch

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,gb18030,big5,euc-jp,latin1

inoremap <silent>zn <ESC>jo
inoremap <silent><C-e> <END>
nnoremap <silent><leader>q :q<CR>
nnoremap <leader>l :nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>

autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
  \ |   exe "normal! g`\""
  \ | endif

" delimitMate
let delimitMate_expand_cr = 1
