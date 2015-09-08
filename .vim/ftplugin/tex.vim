set makeprg=sh\ ~/.vim/ftplugin/latex_or_xelatex.sh\ %\ %<\ &&\ cp\ %<.pdf\ ~/for/forlatex/docs
:command! -range Comment <line1>,<line2>s@^@%%@ | noh
:command! -range UnComment <line1>,<line2>s@^%%@@ | noh
set spell
let b:doneTexCompiler = 1
