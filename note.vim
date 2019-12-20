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
