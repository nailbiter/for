colorscheme evening
:command! -nargs=1 -range  Convert <line1>,<line2>s@,@","@e | 
            		\<line1>,<line2>s@^[^;]\+\zs\ze$@;@e | 
			\<line1>,<line2>s@^@{ "items" : ["@e |
			\<line1>,<line2>s@;@"], "tags" : ["@e |
            		\<line1>,<line2>s@$@",<q-args>]},@e | noh
