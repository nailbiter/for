colorscheme evening
set syntax=fc_conf

:command! -nargs=1 -bar -range  Convert <line1>,<line2>s@,@","@eg | 
            		\<line1>,<line2>s@^[^;]\+\zs\ze$@;@eg | 
			\<line1>,<line2>s@^@{ "items" : ["@eg |
			\<line1>,<line2>s@;@"], "tags" : ["@eg |
            \<line1>,<line2>s@$@",<q-args>]},@eg |
            \<line1>,<line2>s@\s*\"\s*@\"@eg | noh

:command! -nargs=1 -range  KanjiConv <line1>,<line2>s@--[^ ]* @,@e |
		    \<line1>,<line2>s@ @,@eg |
		    \<line1>,<line2> Convert <args> |
		    \<line1>,<line2>s@"q"@""@eg |
		    \<line1>,<line2>s@\[""@\["kanji"@eg | noh

command! -range Hira <line1>,<line2>!echo "`cat`" | /home/nailbiter/for/tests/simple.pl
command! -range CheckKanji <line1>,<line2>g!@\["[^"]*","[^"]*","[^"]*","[^"]*","[^"]*"\],@d |noh
command! -range Merge <line1>,<line2>!echo "`cat`" | /home/nailbiter/for/tests/simple2.pl
command! -range On <line1>,<line2>s@false}@true}@
command! -range Off <line1>,<line2>s@true}@false}@
command! -range Check :w | echo <line1> | :e! | set ft=fc_conf
"command! ToList %s@^............@@|
			"\g@^.[^"]@d|
			"\%s@^.\zs.*\ze@@e |
			"\%s@\n@@e |
			"\%s@\S\zs\ze\S@\r@ge |
			"\%sort | noh
