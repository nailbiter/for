" Vim syntax file
" Language:	generic configure file
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last Change:	2000 Feb 11

" remove any old syntax stuff hanging around
syn clear

syn keyword	confTodo	contained TODO FIXME
syn match	confComment	"#.*$" contains=confTodo
syn match	confDelim 	"^####$"
syn match	specChars	"\\\@<!;"
syn match	specChars	"\\\@<!,"
" Avoid matching text#text, used in /etc/disktab and /etc/gettytab
"syn match	confComment	\s#.*"ms=s+1 contains=confTodo
"syn region	confString	start=+"+ skip=+\\\\\|\\"+ end=+"+ oneline
"syn region	confString	start=+'+ skip=+\\\\\|\\'+ end=+'+ oneline

  " The default methods for highlighting.  Can be overridden later
  hi link confComment	Comment
  highlight confDelim ctermbg=red guibg=red ctermfg=white
  highlight specChars	ctermbg=yellow ctermfg=black
  hi link confTodo	Todo
  hi link confString	String

let b:current_syntax = "fc_conf"

" vim: ts=8
