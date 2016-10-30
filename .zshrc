export PS1="%d %% "
function rgrep { grep -rnIi "$1" . --color; }
