function! Cpp_CommentToggle () range
	let	comment=1									"
	for line in range( a:firstline, a:lastline )
		if match( getline(line), '^--') == -1					" no comment
			let comment = 0
			break
		endif
	endfor

	if comment == 0
			exe a:firstline.','.a:lastline."s@^@--@"
	else
			exe a:firstline.','.a:lastline."s@^--@@"
	endif

endfunction    " ----------  end of function Cpp_CommentToggle ----------
nnoremap    <buffer>  <silent>  <LocalLeader>cc         :call Cpp_CommentToggle()<CR>j
vnoremap    <buffer>  <silent>  <LocalLeader>cc         :call Cpp_CommentToggle()<CR>j
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set makeprg=cat\ %\\\|bq\ query

command! Prettify execute "!sqlformat -r -k upper % | sponge %"
command! BqDryRun execute "!cat % | bq query --dry_run"
