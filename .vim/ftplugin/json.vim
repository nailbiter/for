set nospell
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>O
inoremap [[     [
inoremap []     []

command! Prettify execute "!cat % | jq --indent 2 | sponge %"
