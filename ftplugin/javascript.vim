"set tabstop=20
set foldmethod=syntax
"set noexpandtab
set nospell
set si

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

syntax region foldBraces start=/{/ end=/}/ transparent fold keepend extend
setlocal foldmethod=syntax
setlocal foldlevel=99
