export PS1="%d %% "
function rgrep { grep -rnIi "$1" . --color; }
alias rescope="cscope -Rb `find . -name '*.cs'`"
