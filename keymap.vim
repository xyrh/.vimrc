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
nnoremap <leader>l :nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>
nnoremap <leader>[ O<ESC>
nnoremap <leader>] o<ESC>

nnoremap <silent> <C-k> :ALEPreviousWrap<CR>
nnoremap <silent> <C-j> :ALENextWrap<CR>

nnoremap <F7> :NERDTreeToggle<CR>
set pastetoggle=<F3>

function! FzyCommand(choice_command, vim_command)
  try
    let output = system(a:choice_command . " | fzy ")
  catch /Vim:Interrupt/
    " Swallow errors from ^C, allow redraw! below
  endtry
  redraw!
  if v:shell_error == 0 && !empty(output)
    exec a:vim_command . ' ' . output
  endif
endfunction

nnoremap q :q<CR>
nnoremap - :ccl<CR>
nnoremap \ :terminal<CR>
nnoremap <C-_> :call FzyCommand("rg --files --hidden -g '!.git/*' .", ":e")<cr>
nnoremap <M-/> :LeaderfFunction!<cr>
nnoremap <C-s> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
nnoremap <M-s> :<C-U><C-R>=printf("Leaderf! rg -F --current-buffer -e %s ", expand("<cword>"))<CR>
nnoremap go :<C-U>Leaderf! rg --stayOpen --recall<CR>
nnoremap <silent> <M-.> :GtagsCursor<CR>
