let g:tex_flavor = "latex"
filetype on

"load appropriate skeletons
":au BufNewFile *.tex r ~/.vim/skeletons/skeleton.tex
:au BufNewFile *.html 0r ~/.vim/skeletons/skeleton.html
:au BufNewFile *.mac 0r ~/.vim/skeletons/skeleton.mac
:au BufNewFile Makefile 0r ~/.vim/skeletons/skeleton.make

au BufNewFile,BufRead *.wl set filetype=mma
au BufNewFile,BufRead *.gplot set filetype=gnuplot
au BufNewFile,BufRead *.cs set filetype=cs

function! SKEL_spec()
	0r /usr/share/vim/current/skeletons/skeleton.spec
	language time en_US
	if $USER != ''
	    let login = $USER
	elseif $LOGNAME != ''
	    let login = $LOGNAME
	else
	    let login = 'unknown'
	endif
	let newline = stridx(login, "\n")
	if newline != -1
	    let login = strpart(login, 0, newline)
	endif
	if $HOSTNAME != ''
	    let hostname = $HOSTNAME
	else
	    let hostname = system('hostname -f')
	    if v:shell_error
		let hostname = 'localhost'
	    endif
	endif
	let newline = stridx(hostname, "\n")
	if newline != -1
	    let hostname = strpart(hostname, 0, newline)
	endif
	exe "%s/specRPM_CREATION_DATE/" . strftime("%a\ %b\ %d\ %Y") . "/ge"
	exe "%s/specRPM_CREATION_AUTHOR_MAIL/" . login . "@" . hostname . "/ge"
	exe "%s/specRPM_CREATION_NAME/" . expand("%:t:r") . "/ge"
	setf spec
endfunction

":imap <S-Tab> <Space>}
":imap <S-Tab> <C-R>=expand('%:p:h')<CR>
:nmap <C-L> :w <bar> make! <CR>
":imap  <C-R>={ '\<C-W>' }<CR>
":imap <S-Tab> <C-R>=expand('%:p:h') | @echo tesi<CR>oue

"autocmd BufNewFile	*.spec	call SKEL_spec()
" filetypes
filetype plugin on
filetype indent on
syntax on
set modeline
set modelines=5
" ~/.vimrc ends here
let $PATH=$PATH . '~/bin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/TeX/texbin'
