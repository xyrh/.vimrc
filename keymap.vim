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

set pastetoggle=<F3>

inoremap <silent> <C-e> <END>
inoremap <silent> <C-a> <HOME>
inoremap <silent> <C-f> <Right>
inoremap <silent> <C-b> <Left>

nnoremap <C-l> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-l>
nnoremap <nowait> \ :call fzf#run({'source': 'global -c', 'down': '40%', 'sink': 'tag'})<CR>
nnoremap <C-_> :Files<CR>
nnoremap <M-/> :BTags<CR>
nnoremap <M-=> :terminal<CR>
nmap <M-m> <Plug>MarkSet
nmap <M-l> <Plug>MarkAllClear
