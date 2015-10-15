command! -nargs=1 -range Mura <line1>,<line2>!echo "`cat`" | guile --no-auto-compile -s /home/nailbiter/for/forscheme/mura.scm <args>
command! Red s@^@<span style="background-color: #FFFF00">@ | s@<br>$@</span><br>@ | noh
:command! -nargs=1 -bar -range  Convert <line1>,<line2>s@$@</td></tr>@eg | 
            		\<line1>,<line2>s@^@<tr><td>@eg | 
            		\<line1>,<line2>s@,@</td><td>@eg |
            		\<line2>s@$@\r</table></p><P><a href="javascript:greetVisitor('<args>')">press me</a></p>@eg |
            		\<line1>s@^@<p id=<q-args> style="display:none"><table border="1">\r@eg |  noh
