"set tabstop=20
set makeprg=~/.vim/ftplugin/c_comp.sh\ %\ $*
colorscheme desert
set syntax=cpp.doxygen
set foldmethod=syntax
"set noexpandtab
set nospell
set si

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

inoremap    <buffer>  {<CR>  {<CR>}<Esc>O
vnoremap    <buffer>  {<CR> s{<CR>}<Esc>kp=iB

function! Cpp_CommentToggle () range
	let	comment=1									"
	for line in range( a:firstline, a:lastline )
		if match( getline(line), '^\/\/') == -1					" no comment
			let comment = 0
			break
		endif
	endfor

	if comment == 0
			exe a:firstline.','.a:lastline."s@^@//@"
	else
			exe a:firstline.','.a:lastline."s@^//@@"
	endif

endfunction    " ----------  end of function Cpp_CommentToggle ----------
nnoremap    <buffer>  <silent>  <LocalLeader>cc         :call Cpp_CommentToggle()<CR>j
vnoremap    <buffer>  <silent>  <LocalLeader>cc         :call Cpp_CommentToggle()<CR>j
