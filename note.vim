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
function! fzf#vim#grep(grep_command, has_column, ...)
	let fzf_cmd = a:grep_command
	if a:grep_command[-2:-2] == '/'
		let fzf_str = substitute(a:grep_command, "\\s\\S\\+/'", "'", "")
		let fzf_path = matchstr(a:grep_command, "\\s\\S\\+/'")[1:-2]
		if isdirectory(fzf_path)
			let fzf_cmd = fzf_str . ' ' . fzf_path
		endif
	elseif match(a:grep_command, expand('%')) > 0
		let fzf_str = substitute(a:grep_command, "\\s\\S\\+'", "'", "")
		let fzf_path = fnamemodify(expand('%:h'), ':.')
		let fzf_cmd = fzf_str . ' ' . fzf_path
	endif

    let $FZF_DEFAULT_COMMAND = fzf_cmd

" use drop in terminal
" echo -e "\e]51;[\"call\", \"Tapi_TabDrop\", [\"`pwd`/$1\"]]\x07"
if [ -e $1 ];then echo -e "\e]51;[\"call\", \"Tapi_TabDrop\", [\"$1\"]]\x07"; else echo -e "\e]51;[\"call\", \"Tapi_TabDrop\", [\"`pwd`/$1\"]]\x07"; fi
