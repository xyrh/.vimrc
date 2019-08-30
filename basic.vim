set nocompatible
set t_Co=256
colorscheme desert

if has('autocmd')
  filetype plugin indent on
endif

if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

let mapleader=" "
set shortmess=atI

set ttimeout
set ttimeoutlen=50

set number
set laststatus=2

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
set nrformats-=octal
set display+=lastline
set sessionoptions-=options

set autoindent
set cindent

set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab

set ignorecase
set smartcase
set hlsearch
set incsearch

set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

set cscopetag
set completeopt-=preview
set makeprg=sh\ mk.sh
