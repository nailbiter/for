set makeprg=~/.vim/ftplugin/latex_or_xelatex.sh\ %\ %<
:command! -range Comment <line1>,<line2>s@^@%%@ | noh
:command! -range UnComment <line1>,<line2>s@^%%@@ | noh
:command! -range Rpl <line1>,<line2>s@\\"@\"@g | noh
command! -nargs=1 -range MoveToFile <line1>,<line2>!echo "`cat`" | ../bin/MoveToFile <q-args>

command! -range Ruby '<,'>!echo "`cat`" | ~/for/scripts/ruby.sh

set spell
let b:doneTexCompiler = 1
:imap <S-Tab> {}<++><Left><Left><Left><Left><Left><C-j>
:call IMAP('FMF', '\mathfrak{<++>}<++>', 'tex')
:call IMAP('FML', '\mathbb{<++>}<++>', 'tex')
:call IMAP('FMC', '\mathcal{<++>}<++>', 'tex')
:call IMAP('||', '\myabs{<++>}<++>', 'tex')
:call IMAP('<<','\myabra{<++>}<++>', 'tex')

let g:Tex_Env_cases = "\\begin{cases}\<CR><++>,&<++>\\\\\<CR>\\end{cases}<++>"
