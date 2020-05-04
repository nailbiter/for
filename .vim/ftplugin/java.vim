colorscheme desert
set foldmethod=syntax
set nospell
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>O
inoremap [[     [
inoremap []     []
inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()
command! Prettify execute "!~/for/forpython/forjava/prettify.py %"
"command! Log read !printf '\\%s\\\\n");' (openssl rand -hex 8)
command! Log read !echo 'System.err.format("' (openssl rand -hex 8) '\\n");'
"
            "\\n");
