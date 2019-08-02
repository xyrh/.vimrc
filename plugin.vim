call plug#begin('~/.vim/plugged')
Plug 'tomasr/molokai'
Plug 'mhinz/vim-signify'
Plug 'Raimondi/delimitMate'
Plug 'xyrh/gtags'
Plug 'easymotion/vim-easymotion'
Plug 'mg979/vim-visual-multi'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'scrooloose/nerdtree',{'on':['NERDTreeToggle']}
call plug#end()

" delimitMate
let delimitMate_expand_cr = 1

" molokai
colorscheme molokai

" gtags-cscope.vim
let g:Gtags_Auto_Update = 1
let g:Gtags_No_Auto_Jump = 1
let g:GtagsCscope_Auto_Load = 1
let g:GtagsCscope_Auto_Map = 1
let g:GtagsCscope_Quiet  = 1

" NERDTree
let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$', '\.[s]o$', '\.a$']

" LeaderF
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}

let g:Lf_WildIgnore = {
	  \ 'dir': ['.svn','.git','.hg'],
	  \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
	  \}

let g:Lf_MruFileExclude = ['*.so'] 
