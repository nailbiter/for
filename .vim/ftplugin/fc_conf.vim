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

command! -range CheckKanji <line1>,<line2>g!@\["[^"]*","[^"]*","[^"]*","[^"]*","[^"]*"\],@d |noh
command! -range On <line1>,<line2>s@false}@true}@|noh
command! -range Off <line1>,<line2>s@true}@false}@|noh
command! -range -nargs=1 Tag <line1>,<line2>s@tags[^\]]*\zs\ze\]@,"<args>"@ |noh
command! -range Check :w | echo <line1> | :e! | set ft=fc_conf
command! -range -nargs=1 Cut :let @a = "" | <line1>,<line2>g@tags[^\]]*"<args>"@d A|let @" = @a|noh
"command! ToList %s@^............@@|
			"\g@^.[^"]@d|
			"\%s@^.\zs.*\ze@@e |
			"\%s@\n@@e |
			"\%s@\S\zs\ze\S@\r@ge |
			"\%sort | noh
command! -range Hira <line1>,<line2>!echo "`cat`" | ~/for/tests/simple_sh.sh
command! -range RevHira <line1>,<line2>!echo "`cat`" | ~/for/tests/simple_sh.sh rev
command! -range Merge <line1>,<line2>!echo "`cat`" | ~/for/tests/simple_sh.sh merge
