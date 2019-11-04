set nocompatible

if has('autocmd')
	filetype plugin indent on
endif

if has('syntax') && !exists('g:syntax_on')
	syntax enable
endif

if has("termguicolors")
	let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
	let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"
	set termguicolors
endif

let mapleader=" "
set shortmess=atI

set ttimeout
set ttimeoutlen=50
set updatetime=2000

set number
set laststatus=2
set nofoldenable
set autoread

set hidden
set showmatch
set matchtime=2
set wildmenu
set wildmode=list:longest,full
set lazyredraw
set ttyfast
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

set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4

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
set background=dark
set keywordprg=:Man\ -s2 
"set makeprg=sh\ mk.sh
