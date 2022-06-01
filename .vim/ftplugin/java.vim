colorscheme desert
set foldmethod=syntax
set nospell
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

inoremap <      <><Left>
inoremap <<CR>  <<CR>><Esc>O
inoremap <<     <
inoremap <>     <>
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>O
inoremap [[     [
inoremap []     []
inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()
command! Prettify execute "!~/for/forpython/forjava/prettify.py %"
"command! Log read !printf '\\%s\\\\n");' (openssl rand -hex 8)
command! SLog read !echo 'System.err.format("' (openssl rand -hex 8) '\\n");'
command! LLog read !echo '_Log.info("' (openssl rand -hex 8) '\\n");'
"
            "\\n");
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
