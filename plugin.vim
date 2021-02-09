call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-signify'
Plug 'Raimondi/delimitMate'
Plug 'xyrh/global.vim'
Plug 'easymotion/vim-easymotion'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'maralla/completor.vim'
Plug 'mcchrish/nnn.vim'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'inkarkat/vim-ingo-library' | Plug 'inkarkat/vim-mark'
call plug#end()

" delimitMate
let delimitMate_expand_cr = 1

" easymotion
let g:EasyMotion_do_mapping = 1
let g:EasyMotion_leader_key = '<leader>'

" completor.vim
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" seoul256
let g:seoul256_srgb = 1
colorscheme seoul256

" lightline
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ }
      \ }
function! LightlineFilename()
  return fnamemodify(resolve(expand('%:~')), ':.')
endfunction

" Man
let g:ft_man_open_mode = 'vert'

" vim-mark
let g:mw_no_mappings = 1

" nnn.vim
let g:nnn#set_default_mappings = 0
let g:nnn#replace_netrw = 1
let g:nnn#layout = { 'left': '~30%' } " or right, up, down
let g:nnn#action = {
      \ '<c-t>': 'tab split',
      \ '<c-x>': 'split',
      \ '<c-v>': 'vsplit' }
