Backtrace:
In ice-9/boot-9.scm:
 170: 8 [catch #t #<catch-closure 887920> ...]
In unknown file:
   ?: 7 [catch-closure]
In ice-9/boot-9.scm:
  62: 6 [call-with-prompt prompt0 ...]
In ice-9/eval.scm:
 389: 5 [eval # #]
In ice-9/boot-9.scm:
2103: 4 [save-module-excursion #<procedure 673980 at ice-9/boot-9.scm:3547:3 ()>]
3554: 3 [#<procedure 673980 at ice-9/boot-9.scm:3547:3 ()>]
1375: 2 [%start-stack load-stack #<procedure 854400 at ice-9/boot-9.scm:3543:10 ()>]
1380: 1 [#<procedure 76e930 ()>]
In unknown file:
   ?: 0 [primitive-load "/home/nailbiter/for/forscheme/char-"]

ERROR: In procedure primitive-load:
ERROR: In procedure open-file: No such file or directory: "/home/nailbiter/for/forscheme/char-"
