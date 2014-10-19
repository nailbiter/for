colorscheme evening
:set ft=json

syn keyword	confTodo	contained TODO FIXME
syn match	confComment	"#.*$" contains=confTodo

:command! -nargs=1 -range  Convert <line1>,<line2>s@,@","@eg | 
            		\<line1>,<line2>s@^[^;]\+\zs\ze$@;@eg | 
			\<line1>,<line2>s@^@{ "items" : ["@eg |
			\<line1>,<line2>s@;@"], "tags" : ["@eg |
            \<line1>,<line2>s@$@",<q-args>]},@eg |
            \<line1>,<line2>s@\s*\"\s*@\"@eg | noh

command! -range Hira <line1>,<line2>!echo "`cat`" | /home/nailbiter/for/tests/simple.pl
command! -range Merge <line1>,<line2>!echo "`cat`" | /home/nailbiter/for/tests/simple2.pl
