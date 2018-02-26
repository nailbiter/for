"PQ windows
set makeprg=C:\Users\Admin\AppData\Local\Programs\Python\Python35\python.exe\ -W\ ignore\ %
setlocal foldmethod=indent
:command! -range Comment <line1>,<line2>s@^@##@ | noh
:command! -range UnComment <line1>,<line2>s@^##@@ | noh
