set makeprg=latexmk\ -pdf\ -outdir=foraux\ %
:command! -range Comment <line1>,<line2>s@^@%%@ | noh
:command! -range UnComment <line1>,<line2>s@^%%@@ | noh
set spell
let b:doneTexCompiler = 1
:imap <S-Tab> {}<++><Left><Left><Left><Left><Left><C-j>
:call IMAP('FMF', '\mathfrak{<++>}<++>', 'tex')
:call IMAP('FML', '\mathbb{<++>}<++>', 'tex')
:call IMAP('FMC', '\mathcal{<++>}<++>', 'tex')
:call IMAP('||', '\myabs{<++>}<++>', 'tex')

let g:Tex_Env_cases = "\\begin{cases}\<CR><++>,&<++>\\\\\<CR>\\end{cases}<++>"
