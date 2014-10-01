colorscheme evening
:command! -nargs=1 -range  Convert <line1>,<line2>s@,@","@eg | 
            		\<line1>,<line2>s@^[^;]\+\zs\ze$@;@eg | 
			\<line1>,<line2>s@^@{ "items" : ["@eg |
			\<line1>,<line2>s@;@"], "tags" : ["@eg |
            \<line1>,<line2>s@$@",<q-args>]},@eg |
            \<line1>,<line2>s@\s*\"\s*@\"@eg | noh
            
