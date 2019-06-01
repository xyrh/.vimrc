call plug#begin('~/.vim/plugged')
Plug 'Raimondi/delimitMate'
Plug 'tomasr/molokai'
Plug 'mhinz/vim-startify'
Plug 'Valloric/YouCompleteMe'
call plug#end()

" delimitMate
let delimitMate_expand_cr = 1

" molokai
 colorscheme molokai
highlight Normal ctermbg=none
highlight NonText ctermbg=none
