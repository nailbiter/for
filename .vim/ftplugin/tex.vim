set makeprg=~/.vim/ftplugin/latex_or_xelatex.sh\ %\ %<
:command! -range Comment <line1>,<line2>s@^@%%@ | noh
:command! -range UnComment <line1>,<line2>s@^%%@@ | noh
:command! -range Rpl <line1>,<line2>s@\\"@\"@g | noh
command! -nargs=1 -range MoveToFile <line1>,<line2>!../bin/MoveToFile <q-args>

set spell
let b:doneTexCompiler = 1
:imap <S-Tab> {}<++><Left><Left><Left><Left><Left><C-j>
:call IMAP('FMF', '\mathfrak{<++>}<++>', 'tex')
:call IMAP('FML', '\mathbb{<++>}<++>', 'tex')
:call IMAP('FMC', '\mathcal{<++>}<++>', 'tex')
:call IMAP('||', '\myabs{<++>}<++>', 'tex')
:call IMAP('<<','\myabra{<++>}<++>', 'tex')

let g:Tex_Env_cases = "\\begin{cases}\<CR><++>,&<++>\\\\\<CR>\\end{cases}<++>"

function! Cpp_CommentToggle () range
	let	comment=1									"
	for line in range( a:firstline, a:lastline )
		if match( getline(line), '^%%') == -1					" no comment
			let comment = 0
			break
		endif
	endfor

	if comment == 0
			exe a:firstline.','.a:lastline."s@^@%%@"
	else
			exe a:firstline.','.a:lastline."s@^%%@@"
	endif

endfunction    " ----------  end of function Cpp_CommentToggle ----------
nnoremap    <buffer>  <silent>  <LocalLeader>cc         :call Cpp_CommentToggle()<CR>j
vnoremap    <buffer>  <silent>  <LocalLeader>cc         :call Cpp_CommentToggle()<CR>j
