"set expandtab
"set shiftwidth=2
"set softtabstop=2
set foldmethod=indent
set makeprg=mcs\ -out:%.exe\ %\ &&\ mono\ ./%.exe
:command! -range Comment <line1>,<line2>s@^..@//@ | noh
:command! -range UnComment <line1>,<line2>s@^//@  @ | noh
