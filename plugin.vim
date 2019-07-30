call plug#begin('~/.vim/plugged')
Plug 'tomasr/molokai'
Plug 'mhinz/vim-signify'
Plug 'Raimondi/delimitMate'
Plug 'xyrh/gtags'
Plug 'mileszs/ack.vim'
Plug 'easymotion/vim-easymotion'
Plug 'dense-analysis/ale'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'ycm-core/YouCompleteMe'
Plug 'scrooloose/nerdtree',{'on':['NERDTreeToggle']}
Plug 'majutsushi/tagbar',{'on':['TagbarToggle']}
call plug#end()

" delimitMate
let delimitMate_expand_cr = 1

" molokai
colorscheme molokai

" ag.vim
let g:ag_working_path_mode= 'r'

" gtags-cscope.vim
let g:Gtags_Auto_Update = 1
let g:Gtags_No_Auto_Jump = 1
let g:GtagsCscope_Auto_Load = 1
let g:GtagsCscope_Auto_Map = 1
let g:GtagsCscope_Quiet  = 1

" NERDTree
let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$', '\.[s]o$', '\.a$']

" ack.vim
let g:ackprg = 'ag --vimgrep'
