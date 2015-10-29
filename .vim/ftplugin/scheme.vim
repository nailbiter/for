set ft=lisp
set tabstop=4 
set shiftwidth=4 
set expandtab 
set makeprg=guile\ -s\ % 
colorscheme evening 
set nospell 
set si 
:command! -range Comment <line1>,<line2>s@^@;;@ | noh
:command! -range UnComment <line1>,<line2>s@^;;@@ | noh
