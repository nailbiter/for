set spell
set tabstop=4
set shiftwidth=4
set expandtab
:imap <S-Tab> {}<++><Left><Left><Left><Left><Left><C-j>

:command! -nargs=1 Snippet read !guile -s ~/for/forscheme/snippet.scm mails <args>
