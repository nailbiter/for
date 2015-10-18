set makeprg=sh\ ~/.vim/ftplugin/latex_or_xelatex.sh\ %\ %<
:command! -range Comment <line1>,<line2>s@^@%%@ | noh
:command! -range UnComment <line1>,<line2>s@^%%@@ | noh
set spell
let b:doneTexCompiler = 1
:imap <S-Tab> {}<++><Left><Left><Left><Left><Left><C-j>
:call IMAP('FMF', '\mathfrak{<++>}<++>', 'tex')
:call IMAP('FML', '\mathbb{<++>}<++>', 'tex')
