call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-signify'
Plug 'Raimondi/delimitMate'
Plug 'xyrh/global.vim'
Plug 'easymotion/vim-easymotion'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'maralla/completor.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'inkarkat/vim-ingo-library' | Plug 'inkarkat/vim-mark'
call plug#end()

" delimitMate
let delimitMate_expand_cr = 1

" easymotion
let g:EasyMotion_do_mapping = 1
let g:EasyMotion_leader_key = '<leader>'

" NERDTree
let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$', '\.[s]o$', '\.a$']

" completor.vim
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" gruvbox
let g:gitgutter_override_sign_column_highlight = 1
colorscheme gruvbox

" lightline
let g:lightline = {
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ }
      \ }
function! LightlineFilename()
  return expand('%:~')
endfunction

" Man
let g:ft_man_open_mode = 'vert'

" fzf.vim
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always ".shellescape(<q-args>), 1, <bang>0)

" vim-mark
let g:mw_no_mappings = 1
