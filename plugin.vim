call plug#begin('~/.vim/plugged')
Plug 'Raimondi/delimitMate'
Plug 'tomasr/molokai'
Plug 'mhinz/vim-startify'
Plug 'Valloric/YouCompleteMe'
Plug 'mhinz/vim-signify'
Plug 'w0rp/ale'
Plug 'rking/ag.vim'
Plug 'vim-airline/vim-airline'
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
