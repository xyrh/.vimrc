set nocompatible
filetype plugin indent on

let mapleader=" "
set shortmess=atI
set pastetoggle=<F3>

set t_Co=256
syntax enable
syntax on

set ttimeout
set ttimeoutlen=50

set number
set laststatus=2
set statusline=%<%F\ %w%h%m%r%=[%{&ff}\|%{&enc}]

set hidden
set showmatch
set matchtime=2
set display=lastline
set wildmenu
set wildmode=list:longest,full
set lazyredraw
set showcmd
set splitright
set splitbelow

set ffs=unix,mac,dos
set backspace=indent,eol,start
set signcolumn=yes

set autoindent
set cindent

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set ignorecase
set smartcase
set hlsearch
set incsearch

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,gb18030,big5,euc-jp,latin1

set cscopetag
