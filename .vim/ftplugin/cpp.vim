colorscheme blue
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
:command! ClearLine %g@__LINE__@d
:command! -range Comment <line1>,<line2>s@^@//@ | noh
:command! -range UnComment <line1>,<line2>s@^//@@ | noh
