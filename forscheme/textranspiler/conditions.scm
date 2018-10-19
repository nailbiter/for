(use-modules (ice-9 format))
(use-modules (ice-9 eval-string))
(use-modules (srfi srfi-1))
(use-modules (ice-9 regex))
(use-modules (ice-9 common-list))
(use-modules (ice-9 format))
(use-modules (srfi srfi-1))
(use-modules (ice-9 rdelim))
(use-modules (ice-9 popen))

;;TODO: convert this to function taking table of (symbol_name val1 val2) tuples
(display 
      (if
      (not(find(lambda(x)(string=? x "Bversion"))(command-line)))
      "\\newcommand{\\mypm}{+}
      \\newcommand{\\mypmnone}{}
      \\newcommand{\\mymp}{-}
      \\newcommand{\\almlmn}{a^{\\lambda,\\mu,\\nu}_{\\ell,m}}\n
        \\newcommand{\\Almlmn}[1]{A^{\\lambda,\\mu,\\nu}_{\\ell,m}\\left( #1 \\right)}\n
        \\newcommand{\\multone}{}\n
        \\newcommand{\\multtwo}{(-1)^{\\ell+m}}\n
        \\newcommand{\\multthree}{(-1)^{\\frac{\\ell+m}{2}}}\n
        \\newcommand{\\mynone}[1]{}\n
      "
      "%\\newcommand{\\changed}[1]{\\mbox{\\dbox{$#1$}}}
      \\newcommand{\\changed}[1]{#1}
       \\newcommand{\\mypm}{\\changed{-}}
       \\newcommand{\\mypmnone}{\\changed{-}}
      %\\newcommand{\\mymp}{\\changed{\\not{-}}}
      \\newcommand{\\mymp}{\\changed{}}
       \\newcommand{\\almlmn}{\\changed{b^{\\lambda,\\mu,\\nu}_{\\ell,m}}}\n
       \\newcommand{\\Almlmn}[1]{\\changed{B^{\\lambda,\\mu,\\nu}_{\\ell,m}\\left( #1 \\right)}}\n
        \\newcommand{\\multone}{\\changed{(-1)^{m}}}\n
        \\newcommand{\\multtwo}{\\changed{(-1)^{\\ell+2m}}}\n
        \\newcommand{\\multthree}{\\changed{(-1)^{\\frac{\\ell-m}{2}}}}\n
        \\newcommand{\\mynone}[1]{#1}\n
      "))
