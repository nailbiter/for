set ft=lisp
set tabstop=4 
set shiftwidth=4 
set expandtab 
set makeprg=guile\ -s\ % 
"colorscheme evening 
set nospell 
set si 
:command! -range Comment <line1>,<line2>s@^@;;@ | noh
:command! -range UnComment <line1>,<line2>s@^;;@@ | noh
:command! -nargs=1 Snippet read !guile -s ~/for/forscheme/snippet.scm mails <args>
:imap <S-Tab> {}<++><Left><Left><Left><Left><Left><C-j>
:call IMAP ('()', '(<++>)<++>', "lisp")
:call IMAP ('""', '"<++>"<++>', "lisp")

"let s:pA = 'amenu <silent> '.g:Tex_NextMenuLocation.' '.s:MathMenuName
"let g:Tex_NextMenuLocation = g:Tex_NextMenuLocation + 1
"exe s:pA.'&$\ $                     <plug>$$'
