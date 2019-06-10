call plug#begin('~/.vim/plugged')
Plug 'tomasr/molokai'
Plug 'mhinz/vim-startify'
Plug 'Valloric/YouCompleteMe'
Plug 'mhinz/vim-signify'
Plug 'w0rp/ale'
Plug 'rking/ag.vim'
Plug 'itchyny/lightline.vim'
Plug 'Raimondi/delimitMate'
Plug 'Yggdroot/LeaderF'
Plug 'scrooloose/nerdtree',{'on':['NERDTreeToggle']}
Plug 'majutsushi/tagbar',{'on':['TagbarToggle']}
call plug#end()

" delimitMate
let delimitMate_expand_cr = 1

" molokai
colorscheme molokai

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_key_invoke_completion = ''
let g:ycm_key_detailed_diagnostics = ''
let g:ycm_key_list_previous_completion = ['<Up>']

let g:ycm_filetype_whitelist = {
	\ 'vim': 1,
	\ 'c': 1,
	\ 'cpp': 1,
	\ 'sh': 1,
	\}

let g:ycm_filepath_blacklist = {
	\ 'c': 1,
	\}

" ale
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1

" ag.vim
let g:ag_working_path_mode= 'r'

" LeaderF
let g:Lf_ShortcutF = '<c-p>'
noremap <m-p> :LeaderfFunction!<cr>

let g:Lf_MruMaxFiles = 2048
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }
let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_WildIgnore = {
			\ 'dir': ['.svn','.git','.hg'],
			\ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
			\ }
let g:Lf_MruFileExclude = ['*.so', '*.exe', '*.py[co]', '*.sw?', '~$*', '*.bak', '*.tmp', '*.dll']
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}
let g:Lf_NormalMap = {
		\ "File":   [["<ESC>", ':exec g:Lf_py "fileExplManager.quit()"<CR>']],
		\ "Buffer": [["<ESC>", ':exec g:Lf_py "bufExplManager.quit()"<cr>']],
		\ "Mru": [["<ESC>", ':exec g:Lf_py "mruExplManager.quit()"<cr>']],
		\ "Tag": [["<ESC>", ':exec g:Lf_py "tagExplManager.quit()"<cr>']],
		\ "BufTag": [["<ESC>", ':exec g:Lf_py "bufTagExplManager.quit()"<cr>']],
		\ "Function": [["<ESC>", ':exec g:Lf_py "functionExplManager.quit()"<cr>']],
		\ }

" gtags-cscope.vim
let g:GtagsCscope_Auto_Load = 1
let g:GtagsCscope_Auto_Map = 1
let g:GtagsCscope_Quiet  = 1
