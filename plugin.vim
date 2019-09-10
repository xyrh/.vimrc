call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-signify'
Plug 'Raimondi/delimitMate'
Plug 'xyrh/gtags'
Plug 'easymotion/vim-easymotion'
Plug 'lifepillar/vim-solarized8'
Plug 'itchyny/lightline.vim'
Plug 'maralla/completor.vim'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'scrooloose/nerdtree',{'on':['NERDTreeToggle']}
Plug 'majutsushi/tagbar',{'on':['TagbarToggle']}
call plug#end()

" delimitMate
let delimitMate_expand_cr = 1

" easymotion
let g:EasyMotion_do_mapping = 1
let g:EasyMotion_leader_key = '<leader>'

" gtags-cscope.vim
let g:Gtags_Auto_Update = 1
let g:Gtags_No_Auto_Jump = 1
let g:GtagsCscope_Auto_Load = 1
let g:GtagsCscope_Auto_Map = 1
let g:GtagsCscope_Quiet  = 1

" NERDTree
let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$', '\.[s]o$', '\.a$']

" LeaderF
let g:Lf_ShortcutF = ''
let g:Lf_ShortcutB = ''
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}

let g:Lf_WildIgnore = {
	  \ 'dir': ['.svn','.git','.hg'],
	  \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
	  \}

let g:Lf_MruFileExclude = ['*.so'] 

" completor.vim
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" solarized8
let g:solarized_statusline = "flat"
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized8_flat

" lightline
let g:lightline = {
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ }
      \ }
function! LightlineFilename()
  return expand('%:~')
endfunction
