if has('nvim') == 0 && has('gui_running') == 0
    function! s:metacode(key)
	exec "set <M-".a:key.">=\e".a:key
    endfunc
    for i in range(10)
	call s:metacode(nr2char(char2nr('0') + i))
    endfor
    for i in range(26)
	call s:metacode(nr2char(char2nr('a') + i))
	call s:metacode(nr2char(char2nr('A') + i))
    endfor
    for c in [',', '.', '/', ';', '{', '}']
	call s:metacode(c)
    endfor
    for c in ['?', ':', '-', '_', '+', '=', "'"]
	call s:metacode(c)
    endfor
endif

vnoremap < <gv
vnoremap > >gv

noremap <silent><m-1> :tabn 1<cr>
noremap <silent><m-2> :tabn 2<cr>
noremap <silent><m-3> :tabn 3<cr>
noremap <silent><m-4> :tabn 4<cr>
noremap <silent><m-5> :tabn 5<cr>
noremap <silent><m-6> :tabn 6<cr>
noremap <silent><m-7> :tabn 7<cr>
noremap <silent><m-8> :tabn 8<cr>
noremap <silent><m-9> :tabn 9<cr>
noremap <silent><m-0> :tabn 10<cr>
inoremap <silent><m-1> <ESC>:tabn 1<cr>
inoremap <silent><m-2> <ESC>:tabn 2<cr>
inoremap <silent><m-3> <ESC>:tabn 3<cr>
inoremap <silent><m-4> <ESC>:tabn 4<cr>
inoremap <silent><m-5> <ESC>:tabn 5<cr>
inoremap <silent><m-6> <ESC>:tabn 6<cr>
inoremap <silent><m-7> <ESC>:tabn 7<cr>
inoremap <silent><m-8> <ESC>:tabn 8<cr>
inoremap <silent><m-9> <ESC>:tabn 9<cr>
inoremap <silent><m-0> <ESC>:tabn 10<cr>

inoremap <silent> <C-e> <END>
inoremap <silent> <C-a> <HOME>
inoremap <silent> <C-l> <Right>
inoremap <silent> <C-h> <Left>
inoremap <silent> <C-j> <Down>
inoremap <silent> <C-k> <Up>
nnoremap <C-l> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-l>
nnoremap <leader>[ O<ESC>
nnoremap <leader>] o<ESC>

nnoremap <F7> :NERDTreeToggle<CR>
nnoremap <F8> :TagbarToggle<CR>
set pastetoggle=<F3>

nnoremap q :q<CR>
nnoremap <C-n> :call ShowFuncName()<CR>
nnoremap <C-p> :call JumpFuncName()<CR>
nnoremap ; :Rg <C-R>=expand("<cword>")<CR><space>
nnoremap <C-_> :Files<CR>
nnoremap <M-/> :BTags<CR>
nmap <unique> s <Plug>MarkSet
nnoremap <nowait> \ :call fzf#run({'source': 'global -c', 'down': '40%', 'sink': 'tag'})<CR>
