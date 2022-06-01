"PQ windows
set makeprg=C:\Users\Admin\AppData\Local\Programs\Python\Python35\python.exe\ -W\ ignore\ %
setlocal foldmethod=indent
:command! -range Comment <line1>,<line2>s@^@##@ | noh
:command! -range UnComment <line1>,<line2>s@^##@@ | noh
inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()
inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>O
inoremap [[     [
inoremap []     []
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

function! Cpp_CommentToggle () range
	let	comment=1									"
	for line in range( a:firstline, a:lastline )
		if match( getline(line), '^#') == -1					" no comment
			let comment = 0
			break
		endif
	endfor

	if comment == 0
			exe a:firstline.','.a:lastline."s@^@#@"
	else
			exe a:firstline.','.a:lastline."s@^#@@"
	endif

endfunction    " ----------  end of function Cpp_CommentToggle ----------
nnoremap    <buffer>  <silent>  <LocalLeader>cc         :call Cpp_CommentToggle()<CR>j
vnoremap    <buffer>  <silent>  <LocalLeader>cc         :call Cpp_CommentToggle()<CR>j
set listchars+=space:␣
"command! Prettify execute "!python3 -m autopep8 -i --ignore=E731 %"
command! Prettify execute "!python3 -m autopep8 -i %"
command! -nargs=? Init execute "!~/for/forpython/new_file.py new-file % <args>"
command! -nargs=? Snippet execute "read!~/for/forpython/new_file.py snippet <args>"
set number
