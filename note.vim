highlight clear SignColumn
highlight clear LineNr

function! JumpFuncName()
  call search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bW')
endfunction

function! ShowFuncName()
  let lnum = line(".")
  let col = col(".")
  echohl ModeMsg
  echo getline(search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bW'))
  echohl None
  call search("\\%" . lnum . "l" . "\\%" . col . "c")
endfunction

" fzf.vim
function! s:gtags_sink(lines)
  if len(a:lines) < 2
    return
  endif
  execute 'tag ' . split(a:lines[1], '')[0]
endfunction

function! fzf#vim#gtags(query, ...)
  let opts = []

  return s:fzf('gtags', {
  \ 'source':  'global -x .',
  \ 'sink*':   s:function('s:gtags_sink'),
  \ 'options': extend(opts, ['--nth', '1..2', '-m', '--tiebreak=begin', '--prompt', 'Gtags> ', '--query', a:query])}, a:000)
endfunction
