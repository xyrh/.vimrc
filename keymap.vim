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

nnoremap <silent> <C-e> <END>
nnoremap <silent> <C-a> <HOME>
inoremap <silent> <C-e> <END>
inoremap <silent> <C-a> <HOME>
inoremap <silent> <M-f> <Right>
inoremap <silent> <M-b> <Left>
inoremap <silent> <M-n> <Down>
inoremap <silent> <M-p> <Up>
nnoremap <C-l> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-l>
nnoremap <leader>[ O<ESC>
nnoremap <leader>] o<ESC>

nnoremap <F7> :NERDTreeToggle<CR>
nnoremap <F8> :TagbarToggle<CR>
set pastetoggle=<F3>

nnoremap q :q<CR>
nnoremap <C-n> :call ShowFuncName()<CR>
nnoremap <silent> <C-p> :normal [[kf(b<CR>
nnoremap s :Fg <C-R>=expand("<cword>")<CR>
nnoremap - :ccl<CR>
nnoremap ; :Rg <C-R>=expand("<cword>")<CR>
nnoremap <nowait> t :NB <C-R>=expand("<cword>")<CR>
vnoremap <silent> t :<C-u>VB<CR>
nnoremap <C-_> :Files<CR>
nnoremap <M-/> :BTags<CR>
nnoremap <nowait> \ :call fzf#run({'source': 'global -c', 'down': '40%', 'sink': 'tag'})<CR>
