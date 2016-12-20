%%
%% This is file `pja00.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% pja-sera.dtx  (with options: `cls,distribution')
%% 
%% IMPORTANT NOTICE:
%% 
%% For the copyright see the source file.
%% 
%% Any modified versions of this file must be renamed
%% with new filenames distinct from pja00.cls.
%% 
%% For distribution of the original source see the terms
%% for copying and modification in the file pja-sera.dtx.
%% 
%% This generated file may be distributed as long as the
%% original source files, as listed above, are part of the
%% same distribution. (The sources need not necessarily be
%% in the same archive or directory.)
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pja00}
  [2005/05/12 v.2.0.1
   Document class for PJA Ser. A for authors^^J
   (C) 2005 PLAIN Corporation]
\def\@thisclass{PJA00}
\def\@ptsize{0}
\newif\if@restonecol
\expandafter\ifx\csname hour\endcsname\relax
   \newcount\hour
   \newcount\minute
\fi
\hour\time \divide\hour by 60\relax
\@tempcnta\hour \multiply\@tempcnta 60\relax
\minute\time \advance\minute-\@tempcnta
\ifx\pfmtname\@undefined
   \newif\ifmakecropmarks \makecropmarksfalse
   \newdimen\@cropmarkwidth
   \@cropmarkwidth .3\p@
   \newbox\@TL \newbox\@Tl \newbox\@TC
   \newbox\@TR \newbox\@Tr
   \newbox\@BL \newbox\@Bl \newbox\@BC
   \newbox\@BR \newbox\@Br
   \newbox\@CL \newbox\@CR
   \def\makecropmark{%
     \setbox\@TL\hbox to\z@{\yoko\hss
         \vrule width13mm height\@cropmarkwidth depth\z@
         \vrule height10mm width\@cropmarkwidth depth\z@
         \raise4pt\hbox to\z@{\hskip5mm
            \fontsize{9}{13.5}\usefont{OT1}{cmtt}{m}{n}\@bannertoken\hss}}%
     \setbox\@Tl\hbox to\z@{\yoko\hss
         \vrule width10mm height\@cropmarkwidth depth\z@
         \vrule height13mm width\@cropmarkwidth depth\z@}%
     \setbox\@TC\hbox{\yoko
         \vrule width10mm height\@cropmarkwidth depth\z@
         \vrule height10mm width\@cropmarkwidth depth\z@
         \vrule width10mm height\@cropmarkwidth depth\z@}%
     \setbox\@TR\hbox to\z@{\yoko
         \vrule height10mm width\@cropmarkwidth depth\z@
         \vrule width13mm height\@cropmarkwidth depth\z@\hss}%
     \setbox\@Tr\hbox to\z@{\yoko
         \vrule height13mm width\@cropmarkwidth depth\z@
         \vrule width10mm height\@cropmarkwidth depth\z@\hss}%
     \setbox\@BL\hbox to\z@{\yoko\hss
         \vrule width13mm depth\@cropmarkwidth height\z@
         \vrule depth10mm width\@cropmarkwidth height\z@}%
     \setbox\@Bl\hbox to\z@{\yoko\hss
         \vrule width10mm depth\@cropmarkwidth height\z@
         \vrule depth13mm width\@cropmarkwidth height\z@}%
     \setbox\@BC\hbox{\yoko
         \vrule width10mm depth\@cropmarkwidth height\z@
         \vrule depth10mm width\@cropmarkwidth height\z@
         \vrule width10mm depth\@cropmarkwidth height\z@}%
     \setbox\@BR\hbox to\z@{\yoko
         \vrule depth10mm width\@cropmarkwidth height\z@
         \vrule width13mm depth\@cropmarkwidth height\z@\hss}%
     \setbox\@Br\hbox to\z@{\yoko
         \vrule depth13mm width\@cropmarkwidth height\z@
         \vrule width10mm depth\@cropmarkwidth height\z@\hss}%
     \setbox\@CL\hbox to\z@{\yoko\hss
         \vrule width10mm height.5\@cropmarkwidth depth.5\@cropmarkwidth
         \vrule height10mm depth10mm width\@cropmarkwidth}%
     \setbox\@CR\hbox to\z@{\yoko
         \vrule height10mm depth10mm width\@cropmarkwidth
         \vrule height.5\@cropmarkwidth depth.5\@cropmarkwidth width10mm\hss}}
\else
   \let\makecropmarkstrue\tombowtrue
   \tombowdatetrue
   \@tombowwidth.3\p@
   \let\makecropmark\maketombowbox
\fi
\DeclareOption{tombow}{%
   \makecropmarkstrue
   \ifx\@bannertoken\@undefined \expandafter\def \fi
   \@bannertoken{%
      \jobname\space:\space\number\year/\two@digits\month/\two@digits\day
      (\two@digits\hour:\two@digits\minute)}%
  \makecropmark}
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\newif\if@useamsmath \@useamsmathtrue
\DeclareOption{noamsmath}{\@useamsmathfalse}
\newif\if@useamsthm \@useamsthmtrue
\DeclareOption{noamsthm}{\@useamsthmfalse}
\ExecuteOptions{final}
\ProcessOptions
\@twocolumntrue
\@twosidetrue
\input{leqno.clo}
\def\SetVolumeData#1#2#3#4{%
   \gdef\@year{#1}%
   \gdef\@vol{#2}%
   \gdef\@no{#3}%
   \gdef\@date{#4}}
\xdef\@year{\the\year}
\count@\year \advance\count@-1924
\xdef\@vol{\the\count@}
\xdef\@no{\the\month}
\global\let\@date\@empty
\let\Pages\@gobbletwo
\let\PublicationMonth\@gobble
\def\SetSeries#1{\gdef\@series{#1}}
\SetSeries{A}
\def\DocumentLanguage#1{%
   \def\@tempa{#1}\@onelevel@sanitize\@tempa
   \edef\@tempa{\lowercase{\def\noexpand\@tempa{\@tempa}}}%
   \@tempa
   \@ifundefined{@PJA@langname@\@tempa}%
      {\ClassWarning{\@thisclass}{%
          Language `\@tempa' is not supported.\noexpand\MessageBreak
          Use `english' instead of it.}%
       \xdef\@langname{\@PJA@langname@english}}%
      {\xdef\@langname{\@nameuse{@PJA@langname@\@tempa}}}%
   \xdef\refname{\@nameuse{@refname@\@langname}}%
   \xdef\proofname{\@nameuse{@proofname@\@langname}}}
\def\@PJA@langname@english{english}
\def\@PJA@langname@french{french}
\def\runninghead#1{\gdef\@runninghead{#1}}
\long\def\title#1{\def\@title{#1}}
\long\def\subtitle#1{\def\@subtitle{#1}}
\def\author#1{\def\@author{#1}}
\def\and{\ifhmode \unskip \fi , }
\def\thanks#1{%
   \stepcounter{footnote}%
   \expandafter\footnotemark\expandafter[\the\c@footnote]%
   \expandafter\def\expandafter\@tempa\expandafter{%
      \expandafter\footnotetext\expandafter[\the\c@footnote]{#1}}%
   \global\@csc@t\@thanks\@thanks\@tempa}
\newcount\@author@cnt
\def\Author{%
   \global\advance\@author@cnt\@ne
   \@testopt\@Author{}}
\def\@Author[#1]#2{%
   \def\@tempa{#2}%
   \ifx\@tempa\@empty\else
      \@onelevel@sanitize\@tempa
      \edef\@tempa{\count@=`\expandafter\@car\@tempa z\@nil\relax}%
      \@tempa
      \edef\@tempa{{\the\@author@cnt}}%
      \ifnum`0>\count@\else \ifnum`9<\count@\else
         \let\@tempa\@empty
      \fi\fi
   \fi
   \def\@tempb{\@@Author{#1}}%
   \expandafter\@tempb\@tempa{#2}}
\def\@@Author#1#2#3{\@testopt{\@@@Author{#1}{#2}{#3}}{}}
\def\@@@Author#1#2#3[#4]#5{%
   \@testopt{\@@@@Author{#1}{#2}{#3}{#4}{#5}}{}}
\def\@@@@Author#1#2#3#4#5[#6]{%
   \expandafter\def\expandafter\@author@list\expandafter{%
      \@author@list\@elt{#2}{#3}{#5}{#4}{#6}{#1}}}
\def\AuthorBreak{\@cons\@author@breakpos{{\the\@author@cnt}}}
\newcount\@max@affil@id
\def\affilmark#1{%
   \ifnum\@max@affil@id>\@ne
      \textsuperscript{\@makeaffilmark{#1}}%
   \fi}
\def\@makeaffilmark#1{%
   \afterassignment\remove@to@nnil
   \count@0#1\relax\@nnil
   \m@th
   \ifnum 3<\@max@affil@id
      $*$\the\count@
   \else
      \ifcase\count@\or $*$\or $**$\or $*{*}*$\else\fi
   \fi
   )}
\def\affiliation{\@testopt\@affiliation{}}
\long\def\@affiliation[#1]#2#3{%
   \afterassignment\remove@to@nnil
   \count@0#2\relax\@nnil
   \@tempcnta\@max@affil@id
   \ifnum\count@>\@max@affil@id \global\@max@affil@id\count@ \fi
   \advance\@tempcnta\@ne
   \@whilenum\@tempcnta<\@max@affil@id\do{%
      \expandafter\gdef\csname @affil@text@\the\@tempcnta\endcsname{}%
      \expandafter\gdef\csname @affil@fnmark@\the\@tempcnta\endcsname{}%
      \advance\@tempcnta\@ne}%
   \expandafter\gdef\csname @affil@text@\the\count@\endcsname{#3}%
   \expandafter\gdef\csname @affil@fnmark@\the\count@\endcsname{#1}}
\let\affiltext\affiliation
\def\Communicated{\@testopt\@Communicated{\@date}}
\def\@Communicated[#1]#2{\@@Communicated{#1}{#2}{Communicated}}
\def\Contributed{\@testopt\@Contributed{\@date}}
\def\@Contributed[#1]#2{\@@Communicated{#1}{#2}{Contributed}}
\def\@@Communicated#1#2#3{%
   \edef\@communication@date{#1}%
   \def\@communication@person{#2}%
   \def\@communication@prefix{#3}}
\newif\if@subject@omit@rank
\def\Subject{%
   \@ifstar
      {\global\@subject@omit@ranktrue\@Subject}%
      {\global\@subject@omit@rankfalse\@Subject}}
\def\@Subject{\@testopt\@@Subject{2000}}
\def\@@Subject[#1]#2{%
   \def\@subject@year{#1}%
   \def\@subject@code{#2}}
\def\@subject@head{\@subject@year~Mathematics Subject Classification.~}
\newbox\@abstract@textbox
\def\abstract{%
   \global\setbox\@abstract@textbox\vbox\bgroup
      \hsize\textwidth
      \let\@@sloppy\sloppy \let\sloppy\relax
      \@parboxrestore
      \let\sloppy\@@sloppy
      \quotation\normalfont
         \textbf{\abstractname:}%
         \vrule\@width\z@\@height\defaultbaselineskip
         \hskip5mm\ignorespaces}
\def\endabstract{%
   \endquotation\egroup
   \aftergroup\@post@abstract}
\def\KeyWords{\@ifstar\@KeyWords\@KeyWords}
\def\@KeyWords#1{\gdef\@keywords{#1}}
\long\def\miscnote#1{%
   \def\@tempa{\footnotetext[]{#1}}%
   \global\@csc@t\@thanks\@thanks\@tempa}
\def\maketitle{%
   \ifvoid\@abstract@textbox
      \def\@post@abstract{\@maketitle}%
      \global\let\@exec@maketitle\@@exec@maketitle
      \global\let\@exec@maketitle@begin\@@exec@maketitle@begin
      \everypar{\@exec@maketitle}%
   \else
      \def\@post@abstract{%
         \ClassWarning{\@thisclass}%
            {There is a redundant abstract environment.}%
         \setbox\@abstract@textbox\box\voidb@x}%
      \expandafter\@maketitle
   \fi
   \@setcountertype@list}
\def\@@exec@maketitle{%
   \ifhmode {\setbox\z@\lastbox}\fi
   \AtEndDocument{\ClassWarningNoLine{\@thisclass}{No abstract is given}}%
   \global\let\@exec@maketitle\@empty
   \@maketitle}
\def\begin#1{%
   \@exec@maketitle@begin{#1}%
   \@ifundefined{#1}%
      {\def\reserved@a{\@latex@error{Environment #1 undefined}\@eha}}%
      {\def\reserved@a{\def\@currenvir{#1}%
       \edef\@currenvline{\on@line}%
       \csname #1\endcsname}}%
   \@ignorefalse
   \begingroup\@endpefalse\reserved@a}
\def\@@exec@maketitle@begin#1{%
   \global\let\@exec@maketitle@begin\@gobble
   \def\@tempa{#1}%
   \def\@tempb{abstract}%
   \ifx\@tempa\@tempb\else \@exec@maketitle \fi}
\def\@maketitle{%
   \global\let\@exec@maketitle\@empty
   \thispagestyle{firstpage}%
   \@construct@thanks
   \twocolumn[\@@maketitle]%
   \@thanks
   \global\let\@thanks\@empty
   \ifx\@runninghead\@empty \global\let\@runninghead\@title \fi}
\def\@construct@thanks{%
   \@reconstruct@subject@code
   \edef\@tempa{%
      \ifx\@subject@code\@empty\else
         \noexpand\@make@footnotetext{}%
            {\noexpand\@subject@head\@subject@code.}%
      \fi}%
   \@csc@t\@thanks\@thanks\@tempa
   \ifnum\@max@affil@id>\@ne
      \@tempcnta\z@
      \dimen@\z@
      \@whilenum\@tempcnta<\@max@affil@id\do{%
         \advance\@tempcnta\@ne
         \setbox\z@\hbox{%
            \expandafter\ifx
               \csname @affil@fnmark@\the\@tempcnta\endcsname
               \@empty
               \expandafter\affilmark\expandafter{\the\@tempcnta}%
            \else
               \@makefnmark{\@nameuse{@affil@fnmark@\the\@tempcnta}}%
            \fi}%
         \ifdim\wd\z@>\dimen@ \dimen@\wd\z@ \fi}%
      \edef\@max@width@of@fnlabel{\the\dimen@}%
      \@tempcnta\z@
      \@whilenum\@tempcnta<\@max@affil@id\do{%
         \advance\@tempcnta\@ne
         \expandafter\let\expandafter\@tempa
            \csname @affil@fnmark@\the\@tempcnta\endcsname
         \ifx\@tempa\@empty
            \edef\@tempa{\noexpand\affilmark{\the\@tempcnta}}%
            \toks@\expandafter{\@tempa}%
         \else
            \toks@\expandafter{%
               \expandafter\@makefnmark\expandafter{\@tempa}}%
         \fi
         \edef\@tempa{%
            \noexpand\@make@footnotetext
            {\noexpand\leavevmode
             \hbox to\@max@width@of@fnlabel{\hfil\the\toks@}}}%
         \expandafter\let\expandafter\@tempb
            \csname @affil@text@\the\@tempcnta\endcsname
         \expandafter\def\expandafter\@tempb\expandafter{%
            \expandafter{\@tempb}}%
         \@csc@t\@tempa\@tempa\@tempb
         \@csc@t\@thanks\@thanks\@tempa}%
   \fi}
\def\@@maketitle{%
   \vspace*{\defaultbaselineskip}%
   \begingroup\centering
   \fontsize\@xiipt{16}\bfseries\boldmath
   \@title\par
   \endgroup
   \ifx\@subtitle\@empty\else
      \vspace{12\p@}%
      \begingroup\centering
      \fontsize\@xpt{13.5}\bfseries\boldmath
      \@subtitle\par
      \endgroup
   \fi
   \vspace{14.5\p@}%
   \begingroup\centering\small
      \ifnum\@author@cnt>\z@ \@convert@author@list \fi
      \@nameuse{@author@prefix@\@langname}\ \@author\par
   \endgroup
   \vspace{4\p@}%
   \begingroup\centering\fontsize{8}{12}\selectfont
   \ifnum\@max@affil@id<\tw@
      \leavevmode\@nameuse{@affil@text@1}\\%
   \fi
   \leavevmode\phantom{(}%
   \par
   \endgroup
   \vspace{14\p@}%
   \unvbox\@abstract@textbox
   \vspace{4.5\p@}%
   \quotation\normalfont
   \@reconstruct@keywords
   \textbf{\@keywordsname:}\kern5mm\relax\@keywords
   \endquotation
   \vskip-\prevdepth
   \vspace{7.5mm}}
\def\MJA{\textsc{m.\kern.1667emj.\kern.1667ema.}}
\def\@convert@author@list{%
   \count@\@author@cnt
   \let\@author\@empty
   \global\let\@author@in@head\@empty
   \let\@elt\@convert@author@list@elt
   \@tempcnta\z@
   \@get@breakpos
   \@author@list}
\def\@convert@author@list@elt#1#2#3#4#5#6{%
   \advance\count@\m@ne
   \let\@tempb\@empty
   \let\@tempc\@empty
   \ifnum\@author@cnt>\@ne
      \ifnum\@author@cnt=\tw@
         \ifnum\count@>\z@
            \edef\@tempc{ \@nameuse{@author@conj@\@langname}~}%
         \fi
      \else
         \ifnum\count@>\z@
            \def\@tempb{,}%
            \let\@tempc\space
            \ifnum\count@=\@ne
               \edef\@tempc{ \@nameuse{@author@conj@\@langname}~}%
            \fi
         \fi
      \fi
   \fi
   \def\@tempd{#4}%
   \ifx\@tempd\@empty
      \@get@first@letter #2\@nnil
      \expandafter\def\expandafter\@tempd\expandafter{\@tempx.}%
   \fi
   \ifnum\@author@cnt>\thr@@
      \ifx\@author@in@head\@empty
         \def\@tempa{~\textsc{#3}~\textit{et~al}.}%
         \global\@csc@t\@author@in@head\@tempd\@tempa
      \fi
   \else
      \expandafter\def\expandafter\@tempa\expandafter{\@tempd~\textsc{#3}}%
      \@csc@t\@tempa\@tempa\@tempb
      \@csc@t\@tempa\@tempa\@tempc
      \global\@csc@t\@author@in@head\@author@in@head\@tempa
   \fi
   \def\@tempe{#5}%
   \ifx\@tempe\@empty\else
      \def\@tempe{, #5}%
      \ifx\@tempb\@empty \ifnum\count@>\z@ \def\@tempb{,}\fi \fi
      \@csc@t\@tempb\@tempe\@tempb
   \fi
   \let\@tempe\@empty
   \@for\@tempd:=#1\do{%
      \edef\@tempd{%
         \ifx\@tempe\@empty\else\noexpand\textsuperscript{,}\fi
         \noexpand\affilmark{\@tempd}}%
      \@csc@t\@tempe\@tempe\@tempd}%
   \def\@tempa{#6}%
   \ifx\@tempa\@empty\else
      \ifx\@tempe\@empty
         \def\@tempa{\footnotemark[#6]}%
      \else
         \ifnum\@max@affil@id<\tw@
            \def\@tempa{\footnotemark[#6]}%
         \else
            \def\@tempa{\textsuperscript{,}\footnotemark[#6]}%
         \fi
      \fi
   \fi
   \@csc@t\@tempe\@tempe\@tempa
   \@csc@t\@tempb\@tempb\@tempe
   \def\@tempa{#2~\textsc{#3}}%
   \@csc@t\@tempa\@tempa\@tempb
   \@tempcntb\@tempcnta \advance\@tempcntb\count@
   \ifnum\@tempcntb>\@author@cnt\else
      \ifnum\count@>\z@
         \expandafter\def\expandafter\@tempc\expandafter{%
            \expandafter\\\@tempc}%
      \fi
      \@get@breakpos
   \fi
   \@csc@t\@tempa\@tempa\@tempc
   \@csc@t\@author\@author\@tempa}
\def\@get@breakpos{%
   \ifx\@author@breakpos\@empty
      \@tempcnta\@M
   \else
      \expandafter\@get@breakpos@\@author@breakpos\@nil
      \ifnum\@tempcntb>\@tempcnta
         \@tempcnta\@tempcntb
      \else
         \expandafter\expandafter\expandafter\@get@breakpos
      \fi
   \fi}
\def\@get@breakpos@\@elt#1#2\@nil{%
   \gdef\@author@breakpos{#2}%
   \afterassignment\remove@to@nnil
   \@tempcntb0#1\relax\@nnil}
\newif\if@letter@is@found
\def\@get@first@letter{%
   \global\@letter@is@foundfalse
   \@get@first@letter@}
\def\@get@first@letter@{%
   \let\@tempx\@empty
   \@get@first@letter@loop}
\def\@get@first@letter@loop{\futurelet\let@token\@get@first@letter@loop@}
\def\@get@first@letter@loop@{%
   \ifx\let@token\@nnil
      \let\@tempy\@gobble
   \else
      \def\@tempy{\@get@first@letter@@}%
      \ifx      \let@token\bgroup
         \def\@tempy{\@get@first@letter@bgroup}%
      \else\ifx \let@token\@sptoken
         \def\@tempy{\@get@first@letter@space}%
      \fi\fi
   \fi
   \@tempy}
\def\@get@first@letter@@#1{%
   \def\@tempz{\remove@to@nnil}%
   \def\@tempa{#1}%
   \@csc@t\@tempx\@tempx\@tempa
   \if\noexpand#1\relax
      \@tfor\@tempy:=\"\`\'\.\=\^\~\H\b\c\d\k\r\t\u\v\do{%
         \ifx\@tempa\@tempy
            \def\@tempz{\@get@first@letter@loop}%
            \@break@tfor
         \fi}%
      \def\@tempy{\remove@to@nnil}%
      \ifx\@tempy\@tempz \global\@letter@is@foundtrue \fi
   \else
      \global\@letter@is@foundtrue
   \fi
   \@tempz}
\def\@get@first@letter@bgroup#1{%
   \begingroup
   \@get@first@letter@#1\@nnil
   \expandafter\endgroup
   \expandafter\def\expandafter\@tempy\expandafter{\expandafter{\@tempx}}%
   \@csc@t\@tempx\@tempx\@tempy
   \if@letter@is@found \expandafter\remove@to@nnil
   \else               \expandafter\@get@first@letter@loop
   \fi}
\begingroup
\def\:{\def\@get@first@letter@space}
\expandafter\endgroup\: {\@get@first@letter@loop}
\AtBeginDocument{\@ifundefined{k}{\let\k\@empty}\relax}
\def\@reconstruct@keywords{%
   \def\@keywordsname{Key word}%
   \let\@tempa\@empty
   \def\@tempb{\@tfor\@tempb:=}%
   \expandafter\@tempb\@keywords\do{%
      \ifx\@tempb\@empty\else\ifx\@tempb\space\else
         \ifx\@tempa\@empty\else \def\@keywordsname{Key words}\fi
         \toks@\expandafter{\@tempa}%
         \@temptokena\expandafter{\@tempb}%
         \edef\@tempa{%
            \the\toks@\ifx\@tempa\@empty\else; \fi
            \the\@temptokena}%
      \fi\fi}%
   \expandafter\def\expandafter\@keywords\expandafter{\@tempa.}}
\def\@reconstruct@subject@code{%
   \let\@primary@subjects\@empty
   \let\@secondary@subjects\@empty
   \@onelevel@sanitize\@subject@code
   \edef\@tempc{\@subject@code\space}%
   \edef\@tempc{\expandafter\zap@space\@tempc\@empty}%
   \def\@tempd##1;##2;##3\@nil{%
      \def\@tempa{##1}%
      \def\@tempb{##2}}%
   \expandafter\@tempd\@tempc;;\@nil
   \def\@tempc{\@for\@tempc:=}%
   \expandafter\@tempc\@tempa\do{%
      \edef\@primary@subjects{\@primary@subjects
         \ifx\@primary@subjects\@empty\else, \fi \@tempc}}%
   \def\@tempc{\@for\@tempc:=}%
   \expandafter\@tempc\@tempb\do{%
      \edef\@secondary@subjects{\@secondary@subjects
         \ifx\@secondary@subjects\@empty\else, \fi \@tempc}}%
   \ifx\@secondary@subjects\@empty\else
      \global\@subject@omit@rankfalse
      \ifx\@primary@subjects\@empty
         \ClassWarning{\@thisclass}{No primary subject is given}%
      \fi
   \fi
   \edef\@subject@code{%
      \ifx\@primary@subjects\@empty\else
         \if@subject@omit@rank\else Primary \fi
         \@primary@subjects
      \fi
      \ifx\@secondary@subjects\@empty\else
         ; Secondary \@secondary@subjects
      \fi}}
\def\@author@prefix@english{By}
\def\@author@prefix@french{Par}
\def\@author@conj@english{and}
\def\@author@conj@french{et}
\def\@proofname@english{Proof}
\def\@proofname@french{Preuve}
\def\@make@formatted@date#1{%
   \expandafter\@make@formatted@date@#1///\@nil
   \@tempa}
\def\@make@formatted@date@#1/#2/#3/#4\@nil{%
   \def\@tempa{#1}%
   \def\@tempb{#2}%
   \def\@tempc{#3}%
   \def\@tempd{#4}%
   \global\let\@curr@year\@empty
   \ifx\@tempd\@empty\else
      \begingroup
      \afterassignment\remove@to@nnil
      \@tempcnta 0\@tempa\relax\@nnil
      \ifnum\@tempcnta>\z@\else \@tempcnta\z@ \fi
      \year\@tempcnta
      \xdef\@curr@year{\number\year}%
      \afterassignment\remove@to@nnil
      \@tempcnta 0\@tempb\relax\@nnil
      \ifnum\@tempcnta>\z@\else \@tempcnta\z@ \fi
      \month\@tempcnta
      \afterassignment\remove@to@nnil
      \@tempcnta 0\@tempc\relax\@nnil
      \ifnum\@tempcnta>\z@\else \@tempcnta\z@ \fi
      \day\@tempcnta
      \edef\@tempa{\def\noexpand\@tempa{\today}}%
      \expandafter\endgroup\@tempa
   \fi}
\def\@init@article@data{%
   \setcounter{secnumdepth}{2}%
   \gdef\@langname{english}%
   \def\refname{References}%
   \global\let\@author@in@head\@empty
   \global\let\@runninghead\@empty
   \let\@title\@empty
   \let\@subtitle\@empty
   \let\@author\@empty
   \let\@author@list\@empty
   \global\@author@cnt\z@
   \global\let\@author@breakpos\@empty
   \global\@max@affil@id\z@
   \let\@subject@year\@empty
   \let\@subject@code\@empty
   \global\@subject@omit@rankfalse
   \setbox\@abstract@textbox\box\voidb@x
   \global\let\@abstract\@empty
   \let\@post@abstract\relax
   \let\@keywords\@empty
   \let\@communication@date\@empty
   \let\@communication@person\@empty
   \let\@communication@prefix\@empty
   \let\@thanks\@empty
   \def\@curr@QEDstyle{box}%
   \global\let\@list@of@thmtype@env\@empty
   \let\@setcountertype@list\@empty
   \global\let\@exec@maketitle\@empty
   \global\let\@exec@maketitle@begin\@gobble}
\@init@article@data
\expandafter\ifx\csname @csc@t\endcsname\relax
\def\@csc@t#1#2#3{%
   \expandafter\expandafter\expandafter\def
   \expandafter\expandafter\expandafter#1%
   \expandafter\expandafter\expandafter{\expandafter#2#3}}
\fi
\newdimen\defaultbaselineskip
\defaultbaselineskip 12.6\p@
\DeclareRobustCommand*\normalsize{%
   \@setfontsize\normalsize\@xpt\defaultbaselineskip
   \abovedisplayskip   .5\defaultbaselineskip \@plus1\p@ \@minus1\p@
   \belowdisplayskip   \abovedisplayskip
   \abovedisplayshortskip   .5\defaultbaselineskip \@plus1\p@ \@minus1\p@
   \belowdisplayshortskip   \abovedisplayshortskip
   \let\@listi\@listI}
\normalsize
\ifx\pfmtname\@undefined
   \newdimen\Cht \Cht=.8em
   \newdimen\Cdp \Cdp=.2em
   \newdimen\Cwd \Cwd=1em
   \newdimen\Cvs \Cvs=\baselineskip
   \newdimen\Chs \Chs=1em
\else
   \setbox0\hbox{\char\euc"A1A1}%
   \Cht=\ht0
   \Cdp=\dp0
   \Cwd=\wd0
   \Cvs=\baselineskip
   \Chs=\wd0
\fi
\DeclareRobustCommand*\small{%
   \@setfontsize\small\@ixpt{11}%
   \abovedisplayskip   .25\defaultbaselineskip \@plus1\p@ \@minus1\p@
   \belowdisplayskip   \abovedisplayskip
   \abovedisplayshortskip   \z@ \@plus2\p@ \@minus\z@
   \belowdisplayshortskip   \abovedisplayshortskip}
\DeclareRobustCommand*\footnotesize{%
   \@setfontsize\footnotesize\@viiipt\@xpt
   \abovedisplayskip   .25\defaultbaselineskip \@plus1\p@ \@minus1\p@
   \belowdisplayskip   \abovedisplayskip
   \abovedisplayshortskip   \z@ \@plus\p@ \@minus\z@
   \belowdisplayshortskip   \abovedisplayshortskip}
\DeclareRobustCommand*\scriptsize{\@setfontsize\scriptsize\@viipt\@viiipt}
\DeclareRobustCommand*\tiny{\@setfontsize\tiny\@vpt\@vipt}
\DeclareRobustCommand*\large{\@setfontsize\large\@xiipt{17}}
\DeclareRobustCommand*\Large{\@setfontsize\Large\@xivpt{21}}
\DeclareRobustCommand*\LARGE{\@setfontsize\LARGE\@xviipt{25}}
\DeclareRobustCommand*\huge{\@setfontsize\huge\@xxpt{28}}
\DeclareRobustCommand*\Huge{\@setfontsize\Huge\@xxvpt{33}}
\paperwidth    210mm
\paperheight   297mm
\textwidth     165mm
\textheight    220mm
\topskip       8\p@
\headsep       .25in
\headheight    12\p@
\footskip      .35in
\maxdepth      .5\topskip
\dimen@\textheight \advance\dimen@-\topskip
\divide\dimen@ 49\relax
\defaultbaselineskip\dimen@
\topmargin     10\p@
\dimen@\paperwidth
\advance\dimen@-\textwidth
\divide\dimen@\tw@
\oddsidemargin\dimen@
\evensidemargin\dimen@
\advance\oddsidemargin  -1in
\advance\evensidemargin -1in
\columnsep       5mm
\columnseprule   \z@
\footnotesep      6.65\p@
\skip\footins     9\p@ \@plus 4\p@ \@minus 2\p@
\skip\@mpfootins=\skip\footins
\marginparwidth .5\dimen@
\marginparsep   10\p@
\marginparpush   5\p@
\lineskip      \p@
\normallineskip\lineskip
\lineskiplimit \lineskip
\def\baselinestretch{}%%% empty => single space
\parindent 20\p@
\parskip \z@ \@plus \p@
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\arraycolsep     1.5\p@
\tabcolsep       6\p@
\arrayrulewidth .4\p@
\doublerulesep   2\p@
\tabbingsep      \labelsep
\fboxsep         3\p@
\fboxrule       .4\p@
\def\hline{%
   \noalign{\ifnum0=`}\fi
   \@ifnextchar[\@tabular@hline{\@tabular@hline[\arrayrulewidth]}}
\def\@tabular@hline[#1]{%
   \hrule\@height#1%
   \ifnum0=`{\fi}}
\def\Hline{\hline[.8\p@]}
\def\footnoterule{\kern-3\p@ \hrule\@height.4\p@ \kern2.6\p@}
\def\thefootnote{*\@arabic\c@footnote}
\def\footnote{%
   \@ifnextchar[%
      \@footnote
     {\refstepcounter{footnote}%
      \edef\@tempa{\noexpand\@footnote[\thefootnote]}%
      \@tempa}}
\long\def\@footnote[#1]#2{%
   \footnotemark[#1]%
   \footnotetext[#1]{#2}}
\def\footnotemark{%
   \ifvmode \leavevmode \fi
   \@ifnextchar[\@footnotemark\relax}
\def\@footnotemark[#1]{%
   \def\@tempa{#1}%
   \ifx\@tempa\@empty\else \@makefnmark{#1}\fi}
\def\@makefnmark#1{\textsuperscript{{\normalfont#1)}}}
\def\footnotetext{%
   \ifx\@exec@maketitle\@empty\else
      \ifvmode \leavevmode \fi
   \fi
   \@ifnextchar[%
      \@footnotetext
     {\@make@footnotetext{}}}
\def\@footnotetext[#1]{%
   \def\@tempa{#1}%
   \ifx\@tempa\@empty\else \def\@tempa{\@makefnmark{#1}}\fi
   \expandafter\@make@footnotetext\expandafter{\@tempa}}
\long\def\@make@footnotetext#1#2{%
   \def\@make@footnotetext@temp{#1}%
   \ifx\@make@footnotetext@temp\@empty\else
      \expandafter\def\expandafter\@make@footnotetext@temp
         \expandafter{\@make@footnotetext@temp\ }%
   \fi
   \insert\footins{%
      \reset@font\footnotesize
      \interlinepenalty\interfootnotelinepenalty
      \splittopskip\footnotesep
      \splitmaxdepth \dp\strutbox \floatingpenalty\@MM
      \hsize\columnwidth \@parboxrestore
      \color@begingroup
      \@makefntext{%
         \rule\z@\footnotesep
         \ignorespaces\@make@footnotetext@temp
         #2\@finalstrut\strutbox}%
      \color@endgroup}}
\long\def\@makefntext#1{%
   \parindent10\p@
   #1}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*{\cal}{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*{\mit}{\@fontswitch\relax\mathnormal}
\ifx\pfmtname\@undefined
   \let\mc\rm
   \let\gt\sf
\else
   \DeclareOldFontCommand{\mc}{\normalfont\mcfamily}{\@nomath\mc}
   \DeclareOldFontCommand{\gt}{\normalfont\gtfamily}{\@nomath\gt}
\fi
\parsep    \z@
\partopsep \z@
\topsep    \z@
\itemsep   \z@
\labelsep.5em
\labelwidth\leftmargini \advance\labelwidth-\labelsep
\def\@listi{%
   \leftmargin\leftmargini
   \labelwidth\leftmargin \advance\labelwidth-\labelsep}
\let\@listI\@listi
\@listi
\def\@listii{%
   \leftmargin\leftmarginii
   \labelwidth\leftmarginii \advance\labelwidth-\labelsep}
\def\@listiii{%
   \leftmargin\leftmarginiii
   \labelwidth\leftmarginiii \advance\labelwidth-\labelsep}
\def\@listiv{%
   \leftmargin\leftmarginiv
   \labelwidth\leftmargin \advance\labelwidth-\labelsep}
\def\@listv{%
   \leftmargin\leftmarginv
   \labelwidth\leftmargin \advance\labelwidth-\labelsep}
\def\@listvi{%
   \leftmargin\leftmarginvi
   \labelwidth\leftmargin \advance\labelwidth-\labelsep}
\leftmargini   2em
\leftmarginii  2em
\leftmarginiii 2em
\leftmarginiv  1.5em
\leftmarginv   .5em
\leftmarginvi  .5em
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\def\theenumi{\@alph\c@enumi}
\def\theenumii{\@roman\c@enumii}
\def\theenumiii{\@roman\c@enumiii}
\def\theenumiv{\@Alph\c@enumiv}
\def\labelenumi{(\theenumi)}
\def\labelenumii{(\theenumii)}
\def\labelenumiii{\theenumiii.}
\def\labelenumiv{\theenumiv.}
\def\p@enumii{\theenumi}
\def\p@enumiii{\theenumi(\theenumii)}
\def\p@enumiv{\p@enumiii\theenumiii}
\def\labelitemi{\textbullet}
\def\labelitemii{\bfseries\textendash}
\def\labelitemiii{\textasteriskcentered}
\def\labelitemiv{\textperiodcentered}
\def\enumerate{%
   \ifnum\@enumdepth>3\relax
      \@toodeep
   \else
      \advance\@enumdepth\@ne
      \edef\@enumctr{enum\romannumeral\the\@enumdepth}%
      \expandafter\list\csname label\@enumctr\endcsname
         {\topsep\z@ \labelwidth1em \labelsep.5em
          \leftmargin\ifnum\@enumdepth=\@ne 1em\else \leftskip\fi\relax
          \advance\leftmargin 1em
          \usecounter{\@enumctr}%
          \def\makelabel##1{\hss\llap{{\normalfont##1}}}}%
   \fi}
\def\endenumerate{\endlist}
\def\itemize{%
   \ifnum\@itemdepth>3\relax
      \@toodeep
   \else
      \advance\@itemdepth\@ne
      \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
      \expandafter\list\csname \@itemitem\endcsname
         {\topsep\z@ \labelwidth1em \labelsep.5em
          \leftmargin\ifnum\@itemdepth=\@ne 1em\else \leftskip\fi\relax
          \advance\leftmargin 1em
          \def\makelabel##1{\hss\llap{{\normalfont##1}}}}%
   \fi}
\def\enditemise{\endlist}
\def\@doendpe{%
   \@endpetrue
   \def\par{%
      \@restorepar
      \everypar{%
         \if@nobreak\else \clubpenalty\@clubpenalty \fi
         \everypar{}}%
      \par\@endpefalse}%
   \everypar{%
      {\setbox\z@\lastbox}%
      \if@nobreak\else \clubpenalty\@clubpenalty \fi
      \everypar{}%
      \@endpefalse}}
\def\quotation{%
   \list{}{%
      \listparindent 8mm
      \itemindent\listparindent
      \leftmargin 7.5mm
      \rightmargin\leftmargin
      \parsep\z@ \@plus\p@}%
      \item\relax}
\def\endquotation{\endlist}
\def\quote{%
   \list{}{\rightmargin\leftmargin}%
   \item\relax}
\def\endquote{\endlist}
\let\verse\quote
\let\endverse\endquote
\def\description{%
   \list{}{%
      \labelwidth\z@ \itemindent-\leftmargin
      \let\makelabel\descriptionlabel}}
\def\enddescription{\endlist}
\def\descriptionlabel#1{\hskip\labelsep\normalfont\bfseries #1}
\def\@@addtoreset#1#2{%
   \begingroup
   \@ifundefined{cl@#2}{\@namedef{cl@#2}{}}\relax
   \edef\@tempa{#1}%
   \def\@elt##1{%
      \def\@tempb{##1}%
      \ifx\@tempa\@tempb \@tempswafalse \fi}%
   \@tempswatrue
   \csname cl@#2\endcsname
   \if@tempswa
      \let\@elt\relax
      \edef\@tempa{%
         \def\expandafter\noexpand\csname cl@#2\endcsname{%
            \csname cl@#2\endcsname
            \@elt{#1}}}%
   \else
      \let\@tempa\@empty
   \fi
   \expandafter\endgroup\@tempa}
\def\independentof#1#2{%
   \begingroup
   \edef\@tempa{#1}%
   \let\@tempc\relax
   \let\@tempz\@empty
   \def\@elt##1{%
      \def\@tempb{##1}%
      \ifx\@tempa\@tempb\else
         \edef\@tempz{\@tempz\@tempc{##1}}%
      \fi}%
   \csname cl@#2\endcsname
   \def\@tempc{\noexpand\@elt}%
   \edef\@tempa{\def\expandafter\noexpand\csname cl@#2\endcsname{\@tempz}}%
   \expandafter\endgroup\@tempa}
\def\ResetCountType#1#2{%
   \edef\@tempa{\zap@space#1 \@empty}%
   \@for\@RCT@temp:=\@tempa\do{%
      \ifx\@RCT@temp\@empty\else
         \expandafter\@ResetCountType\expandafter{\@RCT@temp}{#2}%
      \fi}}
\def\@ResetCountType#1#2{%
   \let\@@elt\@elt
   \def\@elt{\independentof{#1}}%
   \cl@@ckpt
   \let\@elt\@@elt
   \def\@tempa{#2}\def\@tempb{chapter}%
   \ifx\@tempa\@tempb
      \@@addtoreset{#1}{chapter}%
      \let\@tempa\@empty
   \fi
   \ifx\@tempa\@empty
      \expandafter\edef\csname the#1\endcsname{%
         \noexpand\@arabic\expandafter\noexpand\csname c@#1\endcsname}%
   \else
      \@@addtoreset{#1}{#2}%
      \expandafter\edef\csname the#1\endcsname{%
         \expandafter\noexpand\csname the#2\endcsname.%
         \noexpand\@arabic\expandafter\noexpand\csname c@#1\endcsname}%
   \fi}
\AtBeginDocument{\let\numberwithin\ResetCountType}
\@@addtoreset{footnote}{@article}
\newcounter{section}
\def\thesection{\@arabic\c@section}
\@@addtoreset{section}{@article}
\newcounter{subsection}[section]
\def\thesubsection{\thesection.\@arabic\c@subsection}
\@@addtoreset{subsection}{@article}
\newcounter{subsubsection}[subsection]
\def\thesubsubsection{\thesubsection.\@arabic\c@subsubsection}
\@@addtoreset{subsubsection}{@article}
\newcounter{paragraph}[subsubsection]
\def\theparagraph{\thesubsubsection.\@arabic\c@paragraph}
\@@addtoreset{paragraph}{@article}
\newcounter{subparagraph}[paragraph]
\def\thesubparagraph{\theparagraph.\@arabic\c@subparagraph}
\@@addtoreset{subparagraph}{@article}
\def\section{%
   \@startsection{section}{1}{20\p@}{\z@ \@plus \p@}{-10\p@}%
      {\reset@font\normalsize\bfseries\boldmath}}
\let\sectionmark\@gobble
\def\subsection{%
   \@startsection{subsection}{2}{20\p@}{\z@ \@plus \p@}{-10\p@}%
      {\reset@font\normalsize\bfseries\boldmath}}
\let\subsectionmark\@gobble
\def\subsubsection{%
   \@startsection{subsubsection}{3}{\z@}{\z@ \@plus \p@}{-10\p@}%
   {\reset@font\normalsize\bfseries\boldmath}}
\let\subsubsectionmark\@gobble
\def\paragraph{%
   \@startsection{paragraph}{4}{\z@}{\z@ \@plus \p@}{-10\p@}%
   {\reset@font\normalsize\bfseries\boldmath}}
\let\paragraphmark\@gobble
\def\subparagraph{%
   \@startsection{subparagraph}{5}{\z@}{\z@ \@plus \p@}{-10\p@}%
   {\reset@font\normalsize\bfseries\boldmath}}
\let\subparagraphmark\@gobble
\def\@startsection#1#2#3#4#5#6{%
   \@exec@maketitle
   \if@noskipsec \leavevmode \fi
   \par
   \@tempskipa #4\relax
   \@afterindenttrue
   \ifdim\@tempskipa<\z@
      \@tempskipa-\@tempskipa
      \@afterindentfalse
   \fi
   \if@nobreak
      \everypar{}%
   \else
      \addpenalty\@secpenalty\addvspace\@tempskipa
   \fi
   \@ifstar
      {\@ssect{#3}{#4}{#5}{#6}}%
      {\@dblarg{\@sect{#1}{#2}{#3}{#4}{#5}{#6}}}}
\def\@xsect#1{%
   \@tempskipa#1\relax
   \ifdim\@tempskipa>\z@
      \par\nobreak
      \vskip\@tempskipa
      \@afterheading
   \else
      \@nobreakfalse
      \global\@noskipsectrue
      \everypar{%
         \if@noskipsec
            \global\@noskipsecfalse
            {\setbox\z@\lastbox}%
            \clubpenalty\@M
            \begingroup \@svsechd \endgroup
            \unskip
            \nobreak
            \hskip\z@ \@plus \@sectitle@optionalskip
            \allowbreak
            \hskip\z@ \@plus-\@sectitle@optionalskip
            \@tempskipa#1\relax
            \hskip-\@tempskipa
         \else
            \clubpenalty\@clubpenalty
            \everypar{}%
         \fi}%
   \fi
   \ignorespaces}
\def\@sectitle@optionalskip{12\p@}
\def\@seccntformat#1{%
   \@nameuse{@seccnt@prefix@#1}%
   \@nameuse{the#1}%
   \@nameuse{@seccnt@postfix@#1}%
   \hskip\@nameuse{@seccnt@afterskip@#1}\relax}
\def\@set@seccnt@attribute#1#2#3{\@namedef{@seccnt@#1@#2}{#3}}
\def\SectionNumberPrefix{\@set@seccnt@attribute{prefix}{section}}
\def\SectionNumberPostfix{\@set@seccnt@attribute{postfix}{section}}
\def\SectionNumberAfterskip{\@set@seccnt@attribute{afterskip}{section}}
\def\SubsectionNumberPrefix{\@set@seccnt@attribute{prefix}{subsection}}
\def\SubsectionNumberPostfix{\@set@seccnt@attribute{postfix}{subsection}}
\def\SubsectionNumberAfterskip{\@set@seccnt@attribute{afterskip}{subsection}}
\def\SubsubsectionNumberPrefix{\@set@seccnt@attribute{prefix}{subsubsection}}
\def\SubsubsectionNumberPostfix{\@set@seccnt@attribute{postfix}{subsubsection}}
\def\SubsubsectionNumberAfterskip{\@set@seccnt@attribute{afterskip}{subsubsection}}
\def\ParagraphNumberPrefix{\@set@seccnt@attribute{prefix}{paragraph}}
\def\ParagraphNumberPostfix{\@set@seccnt@attribute{postfix}{paragraph}}
\def\ParagraphNumberAfterskip{\@set@seccnt@attribute{afterskip}{paragraph}}
\def\SubparagraphNumberPrefix{\@set@seccnt@attribute{prefix}{subparagraph}}
\def\SubparagraphNumberPostfix{\@set@seccnt@attribute{postfix}{subparagraph}}
\def\SubparagraphNumberAfterskip{\@set@seccnt@attribute{afterskip}{subparagraph}}
\def\@set@seccntformat@defaults{%
   \SectionNumberPrefix{}%
   \SectionNumberPostfix{.}%
   \SectionNumberAfterskip{10\p@}%
   \SubsectionNumberPrefix{}%
   \SubsectionNumberPostfix{.}%
   \SubsectionNumberAfterskip{10\p@}%
   \SubsubsectionNumberPrefix{}%
   \SubsubsectionNumberPostfix{.}%
   \SubsubsectionNumberAfterskip{10\p@}%
   \ParagraphNumberPrefix{}%
   \ParagraphNumberPostfix{.}%
   \ParagraphNumberAfterskip{10\p@}%
   \SubparagraphNumberPrefix{}%
   \SubparagraphNumberPostfix{.}%
   \SubparagraphNumberAfterskip{10\p@}}
\@set@seccntformat@defaults
\toks@\expandafter{\@init@article@data \@set@seccntformat@defaults}
\edef\@init@article@data{\the\toks@}
\def\titlepage{%
   \cleardoublepage
   \if@twocolumn \@restonecoltrue \onecolumn
   \else         \@restonecolfalse\newpage   \fi
   \thispagestyle{empty}%
   \setcounter{page}\@ne}%
\def\endtitlepage{%
   \if@restonecol \twocolumn \else \newpage \fi
   \if@twoside\else \setcounter{page}\@ne \fi}
\def\appendix{%
   \if@noskipsec \leavevmode \fi
   \ifhmode \unskip\par \fi
   \setcounter{section}{0}%
   \def\thesection{\@Alph\c@section}}
\let\@latex@ifstar\@ifstar
\if@useamsmath
   \RequirePackage[leqno]{amsmath}
\else
   \AtBeginDocument{\let\@@atop\atop}
\fi
\AtBeginDocument{\interdisplaylinepenalty 100\relax}
\RequirePackage[psamsfonts]{amssymb}
\newif\if@eqnarray@usetag
\newif\if@eqnarray@usetagform
\def\eqnarray{%
   \let\tag\@eqnarray@tag
   \global\@eqnarray@usetagfalse
   \global\@eqnarray@usetagformtrue
   \global\let\@eqnarray@currenttag\@empty
   \stepcounter{equation}%
   \let\@currentlabel=\theequation
   \global\@eqnswtrue
   \global\@eqcnt\z@
   \tabskip\@centering
   \let\\=\@eqncr
   $$\halign to \linewidth\bgroup
       \@eqnsel\hskip\@centering$\displaystyle\tabskip\z@{##}$%
      &\global\@eqcnt\@ne
       \hfil
       ${\displaystyle{}##{}}$\hfil
      &\global\@eqcnt\tw@$\displaystyle{##}$\hfil
       \tabskip\@centering
      &\llap{##}\tabskip\z@\cr}
\def\endeqnarray{%
   \@@eqncr
   \egroup
   \global\advance\c@equation\m@ne$$%
   \global\@ignoretrue}
\def\tagform@#1{{\normalfont(#1)}}
\def\@eqnarray@tag{%
   \@ifstar
      {\global\@eqnarray@usetagformfalse\@eqnarray@tag@}%
      {\global\@eqnarray@usetagformtrue\@eqnarray@tag@}}
\def\@eqnarray@tag@#1{%
   \global\@eqnarray@usetagtrue
   \gdef\@eqnarray@currenttag{#1}}
\def\@eqnnum{%
   \hbox to1sp{}%
   \rlap{\normalfont\normalcolor
      \hskip -\displaywidth
      \if@eqnarray@usetag
         \if@eqnarray@usetagform \expandafter\tagform@ \fi
         \@eqnarray@currenttag
      \else
         \tagform@\theequation
      \fi}}
\def\@@eqncr{\let\reserved@a\relax
   \ifcase\@eqcnt \def\reserved@a{& & &}
   \or            \def\reserved@a{& &}%
   \or            \def\reserved@a{&}%
   \else
      \let\reserved@a\@empty
      \@latex@error{Too many columns in eqnarray environment}\@ehc
   \fi
   \reserved@a
   \if@eqnsw
      \@eqnnum
      \if@eqnarray@usetag\else \stepcounter{equation}\fi
   \fi
   \global\@eqnarray@usetagfalse
   \global\@eqnarray@usetagformtrue
   \global\let\@eqnarray@currenttag\@empty
   \global\@eqnswtrue
   \global\@eqcnt\z@
   \cr}
\@@addtoreset{equation}{@article}
\ResetCountType{equation}{}
\def\cplus{{\@@atop+}}
\def\cminus{{\@@atop-}}
\begingroup
\catcode`\"=12
\gdef\@provide@newmcodes@{%
   \def\newmcodes@{%
      \mathcode`\'39%
      \mathcode`\*42%
      \mathcode`\."613A%
      \ifnum\mathcode`\-=45 \else
         \mathchardef\std@minus\mathcode`\-\relax
      \fi
      \mathcode`\-45%
      \mathcode`\/47%
      \mathcode`\:"603A\relax}}
\endgroup
\def\@remove@from@preamblecmds#1{%
   \begingroup
   \def\do##1{\ifx##1#1\else \noexpand\do\noexpand##1\fi}%
   \xdef\@preamblecmds{\@preamblecmds}%
   \endgroup}
\if@useamsmath
   \@remove@from@preamblecmds\DeclareMathOperator
   \@remove@from@preamblecmds\@declmathop
\else
   \@provide@newmcodes@
   \AtBeginDocument{%
      \def\DeclareMathOperator{%
         \@ifstar{\@declmathop{}}{\@declmathop\nolimits}}
      \def\@declmathop#1#2#3{%
         \@ifdefinable{#2}{%
            \DeclareRobustCommand*{#2}{%
               \mathop{\newmcodes@\kern\z@\operator@font#3}#1}}}}
\fi
\def\mathstretch#1{%
   \begingroup
   \let\@tempa\@empty
   \dimen@#1\p@
   \@split@muskip\thickmuskip
   \@mathstretch\thickmuskip
   \divide\dimen@\tw@
   \@split@muskip\medmuskip
   \@mathstretch\medmuskip
   \divide\dimen@\tw@
   \@split@muskip\thinmuskip
   \@mathstretch\thinmuskip
   \expandafter\endgroup\@tempa}
\def\@mathstretch#1{%
   \@tempdima\@muskip@base\p@ \advance\@tempdima\dimen@
   \@tempdimb\@muskip@shrink\p@
   \ifdim\@tempdima<\@tempdimb
      \ifdim\@tempdima>\z@ \@tempdimb\@tempdima
      \else                \@tempdimb\z@
      \fi
   \else
      \ifdim\dimen@<\z@
         \advance\@tempdimb-\dimen@
         \ifdim\@tempdima<\@tempdimb
            \ifdim\@tempdima>\z@ \@tempdimb\@tempdima
            \else                \@tempdimb\z@
            \fi
         \fi
      \fi
   \fi
   \edef\@tempb{%
      #1=\strip@pt\@tempdima mu
         \@plus\@muskip@stretch mu
         \@minus\strip@pt\@tempdimb mu\relax}%
   \@csc@t\@tempa\@tempa\@tempb}
\edef\@tempa{\expandafter\@gobble\string\mu}
\edef\@tempb{\expandafter\@gobble\string\plus}
\edef\@tempc{\expandafter\@gobble\string\minus}
\def\@split@muskip#1{\expandafter\@split@muskip@\the#1\@nnil}
\def\@tempd{\def\@split@muskip@##1##2}
\expandafter\@tempd\@tempa#3\@nnil{%
   \def\@muskip@base{#1#2}%
   \@split@muskip@@#3@\@nnil}
\def\@split@muskip@@#1#2\@nnil{%
   \def\@split@muskip@next{\remove@to@nnil}%
   \if      #1p%
      \def\@split@muskip@next{\@split@muskip@p}%
   \else\if #1m%
      \def\@muskip@stretch{0}%
      \def\@split@muskip@next{\@split@muskip@m}%
   \else
      \def\@muskip@stretch{0}%
      \def\@muskip@shrink{0}%
   \fi\fi
   \@split@muskip@next#1#2\@nnil}
\def\@tempd{\def\@split@muskip@p##1}
\expandafter\def\expandafter\@tempe\expandafter{\@tempb##2##3}%
\expandafter\expandafter\expandafter\@tempd
\expandafter\@tempe\@tempa#4#5\@nnil{%
   \def\@muskip@stretch{#2#3}%
   \if #4m%
      \expandafter\@split@muskip@m
   \else
      \def\@muskip@shrink{0}%
      \expandafter\remove@to@nnil
   \fi
   #4#5\@nnil}
\def\@tempd{\def\@split@muskip@m##1}
\expandafter\def\expandafter\@tempe\expandafter{\@tempc##2##3}%
\expandafter\expandafter\expandafter\@tempd
\expandafter\@tempe\@tempa#4\@nnil{\def\@muskip@shrink{#2#3}}
\@tfor\@tempa:=\@tempb\@tempc\@tempd\@tempe\do{\expandafter\let\@tempa\relax}
\let\@tempa\relax
\setcounter{topnumber}{10}
\setcounter{bottomnumber}{5}
\setcounter{totalnumber}{5}
\setcounter{dbltopnumber}{5}
\def\topfraction{1}
\def\bottomfraction{1}
\def\textfraction{0}
\def\floatpagefraction{.1}
\def\dbltopfraction{1}
\def\dblfloatpagefraction{1}
\floatsep        12\p@ \@plus 2\p@ \@minus 2\p@
\textfloatsep    20\p@ \@plus 2\p@ \@minus 4\p@
\intextsep       12\p@ \@plus 2\p@ \@minus 2\p@
\dblfloatsep     12\p@ \@plus 2\p@ \@minus 2\p@
\dbltextfloatsep 20\p@ \@plus 2\p@ \@minus 4\p@
\@fptop            \z@ \@plus 1fil
\@fpsep           8\p@ \@plus 2fil
\@fpbot            \z@ \@plus 1fil
\@dblfptop         \z@ \@plus 1fil
\@dblfpsep        8\p@ \@plus 2fil
\@dblfpbot         \z@ \@plus 1fil
\newcounter{figure}
\@@addtoreset{figure}{@article}
\def\thefigure{\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename~\thefigure}
\def\figure{\@float{figure}}
\def\endfigure{\end@float}
\@namedef{figure*}{\@dblfloat{figure}}
\@namedef{endfigure*}{\end@dblfloat}
\newcounter{table}
\@@addtoreset{table}{@article}
\def\thetable{\@Roman\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename~\thetable}
\def\table{\@float{table}}
\def\endtable{\end@float}
\@namedef{table*}{\@dblfloat{table}}
\@namedef{endtable*}{\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\abovecaptionskip 10\p@
\belowcaptionskip   \z@
\def\caption{%
   \ifx\@captype\@undefined
      \@latex@error{\noexpand\caption outside float}\@ehd
      \expandafter\@gobble
   \else
      \expandafter\@firstofone
   \fi
   {\@ifnextchar[\@caption@with@option\@caption@without@option}}
\long\def\@caption@with@option[#1]#2{%
   \protected@edef\@currentlabel{#1}%
   \@makecaption{\@nameuse{\@captype name}~#1}{\ignorespaces #2}}
\long\def\@caption@without@option#1{%
   \refstepcounter\@captype
   \@makecaption{\csname fnum@\@captype\endcsname}{\ignorespaces #1}}
\long\def\@makecaption#1#2{%
   \vskip\abovecaptionskip
   \begingroup
   \footnotesize
   \setbox\z@\hbox{#1.\quad}%
   \setbox\@tempboxa\hbox{\let\\\@normalcr\copy\z@#2}%
   \@tempdima\hsize
   \ifdim\@tempdima>.7\textwidth
      \@tempdimb 3em\relax
      \advance\@tempdima-2\@tempdimb
   \else
      \@tempdimb\z@
   \fi
   \ifdim \wd\@tempboxa>\@tempdima
      \@parboxrestore
      \leftskip\@tempdimb \rightskip\leftskip
      \advance\leftskip 1em\relax
      \noindent\kern-1em\relax
      \unhbox\@tempboxa\relax\par
   \else
      \global\@minipagefalse
      \hbox to\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \endgroup
  \vskip\belowcaptionskip}
\let\@mkboth\@gobbletwo
\def\ps@headings{%
   \let\@oddfoot\@empty
   \let\@evenfoot\@empty
   \def\@evenhead{\footnotesize
      \rlap{\thepage}%
      \hfil{\@author@in@head}\hfil
      \llap{[Vol.\ \@vol(\@series),}}%
   \def\@oddhead{%
      \footnotesize
      \rlap{No.\ \@no]}%
      \hfil{\def\\{\unskip\ \ignorespaces}\@runninghead}\hfil
      \llap{\thepage}}}
\def\ps@firstpage{%
   \let\@oddfoot\@empty
   \let\@evenfoot\@empty
   \def\@evenhead{\footnotesize
      \rlap{\thepage}%
      \hfil\@firstpage@head\hfil
      \llap{[Vol.\ \@vol(\@series),}}%
   \def\@oddhead{%
      \footnotesize
      \rlap{No.\ \@no]}%
      \hfil\@firstpage@head\hfil
      \llap{\thepage}}}
\def\@firstpage@head{%
   Proc.\ Japan\ Acad.,\ {\bfseries\@vol},\ Ser.\ \@series\ (\@year)}
\def\ps@myheadings{%
   \let\@oddfoot\@empty
   \let\@evenfoot\@empty
   \def\@evenhead{%
      \footnotesize
      \rlap{\thepage}%
      \hfil{\slshape\leftmark}\hfil}%
   \def\@oddhead{%
      \footnotesize
      \hfil{\slshape\rightmark}\hfil
      \llap{\thepage}}}
\def\ps@plain{%
   \let\@mkboth\@gobbletwo
   \let\ps@jpl@in\ps@plain
   \let\@oddhead\@empty
   \let\@evenhead\@empty
   \def\@oddfoot{\reset@font\hfil\thepage\hfil}%
   \let\@evenfoot\@oddfoot}
\let\ps@jpl@in\ps@plain
\def\ps@toc{%
   \let\@oddfoot\@empty\let\@evenfoot\@empty
   \def\@oddhead{{\scshape\@tocdate}\hfill}%
   \let\@evenhead\@oddhead
   \let\@mkboth\@gobbletwo}
\newif\if@gen@thm@use@specialnumber
\def\@gen@begintheorem{%
   \@latex@ifstar
      {\def\@first@clubpenalty{\@lowpenalty}\@gen@begintheorem@}%
      {\def\@first@clubpenalty{\@M}\@gen@begintheorem@}}
\def\@gen@begintheorem@#1#2#3#4#5#6{%
   \def\@gen@thm@envname{#1}%
   \def\@gen@thm@cntname{#2}%
   \def\@gen@thm@title{#3}%
   \def\@gen@thm@titleshape{#4}%
   \def\@gen@thm@textshape{#5}%
   \def\@gen@thm@beforeskip{#6}%
   \futurelet\let@token\@gen@begintheorem@@}
\def\@gen@begintheorem@@{%
   \ifx<\let@token \expandafter\@firstoftwo
   \else           \expandafter\@secondoftwo
   \fi
   \@gen@thm@read@countertype
   {\@gen@thm@use@default\@gen@thm@check@option}}
\def\@gen@thm@read@countertype<#1>{%
   \protected@edef\@thm@tempa{\zap@space#1 \@empty}%
   \let\@thm@tempb\relax
   \ifx\@thm@tempa\@empty
      \@gen@thm@use@specialnumberfalse
   \else
      \expandafter\@gen@thm@read@countertype@\@thm@tempa"\@nnil
   \fi
   \if@gen@thm@use@specialnumber
      \def\@gen@thm@cnttype{@special}%
   \else
      \expandafter\@gen@thm@get@countertype\@thm@tempa,\@nil
      \expandafter\ifx
         \csname @gen@thm@format@\@gen@thm@cnttype\endcsname\relax
         \@gen@thm@use@default
      \fi
   \fi
   \@gen@thm@check@option}
\def\@gen@thm@read@countertype@{%
   \futurelet\@thm@tempb\@gen@thm@read@countertype@@}
\def\@gen@thm@read@countertype@@{%
   \ifx "\@thm@tempb
      \@gen@thm@use@specialnumbertrue
      \expandafter\@gen@thm@get@specialnumber
   \else
      \@gen@thm@use@specialnumberfalse
      \expandafter\remove@to@nnil
   \fi}
\def\@gen@thm@get@specialnumber"#1"\@nnil{%
   \@gen@thm@get@specialnumber@\@empty#1\@nil"\@nil\@nnil}
\def\@gen@thm@get@specialnumber@#1"\@nil#2\@nnil{%
   \def\@thm@tempa{#2}%
   \ifx\@thm@tempa\@empty
      \@gen@thm@get@specialnumber@@#1%
   \else
      \expandafter\def\expandafter\@gen@thm@currnumber\expandafter{#1}%
   \fi}
\def\@gen@thm@get@specialnumber@@#1\@nil{%
   \expandafter\def\expandafter\@gen@thm@currnumber\expandafter{#1}}
\def\@gen@thm@get@countertype#1,#2\@nil{\def\@gen@thm@cnttype{#1}}
\def\@gen@thm@use@default{%
   \expandafter\let\expandafter\@gen@thm@cnttype
      \csname @gen@thm@default@option@\@gen@thm@envname\endcsname}
\def\@gen@thm@check@option{%
   \csname @gen@thm@init@\@gen@thm@cnttype\endcsname
   \@ifnextchar[%
     {\let\@gen@thm@option\@gen@thm@write@option
      \let\@gen@thm@cntsuffix\@empty
      \@gen@thm@read@option}%
     {\let\@gen@thm@option\@gen@thm@omit@option
      \let\@gen@thm@optionaltext\@empty
      \@gen@starttheorem}}
\def\@gen@thm@read@option[#1]{%
   \def\@gen@thm@optionaltext{#1}%
   \@gen@starttheorem}
\newcount\@saved@clubpenalty
\def\@gen@starttheorem{%
   \if@noskipsec \leavevmode \fi
   \ifhmode \unskip\par \fi
   \addvspace\@gen@thm@beforeskip
   \noindent\indent
   \reset@font
   \hbox{%
      \@gen@thm@titleshape
      \@gen@thm@title
      \@gen@thm@cntsep%%% given by \@gen@thm@init@...
      \if@gen@thm@use@specialnumber
         \@gen@thm@currnumber
      \else
         \csname @gen@thm@format@\@gen@thm@cnttype\endcsname
      \fi
      \@gen@thm@cntsuffix}%%% given by \@gen@thm@init@...
   \@gen@thm@option
   \global\let\@gen@thm@tail\@gen@thm@defaulttail
   \quad
   \@gen@thm@textshape
   \@saved@clubpenalty\clubpenalty
   \clubpenalty\@first@clubpenalty\relax
   \everypar{\clubpenalty\@saved@clubpenalty\everypar{}}%
   \ignorespaces}
\def\@gen@thm@write@option{%
   \@gen@thm@optionsep
   \@thm@option@prefix \@gen@thm@optionaltext \@thm@option@postfix
   {\@gen@thm@titleshape\@gen@thm@tail}}
\def\@gen@thm@defaulttail{.}
\def\@gen@thm@settail#1{\gdef\@gen@thm@tail{#1}}
\global\let\@gen@thm@tail\@gen@thm@defaulttail
\def\@gen@thm@optionsep{\ }
\def\@gen@thm@omit@option{\relax}
\def\TheoremOptionPrefix#1{\def\@thm@option@prefix{#1}}
\def\TheoremOptionPostfix#1{\def\@thm@option@postfix{#1}}
\def\@init@thm@option@format{%
   \TheoremOptionPrefix{(}%
   \TheoremOptionPostfix{)}}
\@init@thm@option@format
\toks@\expandafter{\@init@article@data \@init@thm@option@format}
\edef\@init@article@data{\the\toks@}
\def\@gen@endtheorem{\ifhmode \unskip\par \fi}
\let\@gen@thm@format@empty\@empty
\def\@gen@thm@init@empty{%
   \let\@gen@thm@cntsep\@empty
   \def\@gen@thm@cntsuffix{.}}
\def\@gen@thm@format@arabic{\arabic\@gen@thm@cntname}
\def\@gen@thm@init@arabic{%
   \@gen@thm@stepcounter
   \def\@gen@thm@cntsep{\nobreakspace}%
   \def\@gen@thm@cntsuffix{.}}
\def\@gen@thm@format@Alph{\Alph\@gen@thm@cntname}
\def\@gen@thm@init@Alph{%
   \@gen@thm@stepcounter
   \def\@gen@thm@cntsep{\nobreakspace}%
   \def\@gen@thm@cntsuffix{.}}
\def\@gen@thm@format@withsecno{\thesection.\arabic\@gen@thm@cntname}
\def\@gen@thm@init@withsecno{%
   \@gen@thm@stepcounter
   \def\@gen@thm@cntsep{\nobreakspace}%
   \def\@gen@thm@cntsuffix{.}}
\def\@gen@thm@format@withsubsecno{\thesubsection.\arabic\@gen@thm@cntname}
\def\@gen@thm@init@withsubsecno{%
   \@gen@thm@stepcounter
   \def\@gen@thm@cntsep{\nobreakspace}%
   \def\@gen@thm@cntsuffix{.}}
\def\@gen@thm@format@default{\csname the\@gen@thm@envname\endcsname}
\def\@gen@thm@init@default{%
   \@gen@thm@stepcounter
   \def\@gen@thm@cntsep{\nobreakspace}%
   \def\@gen@thm@cntsuffix{.}}
\def\@gen@thm@init@@special{%
   \protected@edef\@currentlabel{\@gen@thm@currnumber}%
   \def\@gen@thm@cntsep{\nobreakspace}%
   \def\@gen@thm@cntsuffix{.}}
\def\gobbledot{%
   \let\@gen@thm@cntsuffix\@empty
   \global\let\@gen@thm@tail\@empty}
\def\@gen@thm@stepcounter{%
   \stepcounter\@gen@thm@cntname
   \protected@edef\@currentlabel{%
      \csname @gen@thm@format@\@gen@thm@cnttype\endcsname}}
\def\SetCounterType#1#2{%
   \expandafter\def\expandafter\@setcountertype@list
      \expandafter{\@setcountertype@list\@SetCounterTypeExec{#1}{#2}}}
\def\@SetCounterTypeExec#1{%
   \edef\@thm@tempa{\zap@space#1 \@empty}%
   \def\@thm@tempb{all}%
   \ifx\@thm@tempa\@thm@tempb
      \let\@thm@tempa\@list@of@thmtype@env
   \else
      \let\@thm@tempz\@empty
      \let\@@protect\protect
      \let\protect\@unexpandable@protect
      \@for\@thm@tempb:=\@thm@tempa\do{%
         \edef\@thm@tempz{\@thm@tempz\protect\@elt{\@thm@tempb}}}%
      \let\protect\noexpand
      \edef\@thm@tempa{\@thm@tempz}%
      \let\protect\@@protect
   \fi
   \@setcountertype}
\def\@setcountertype#1{%
   \edef\@thm@tempb{\zap@space#1 \@empty}%
   \let\@@elt\@elt
   \let\@elt\@setcountertype@elt
   \def\@setcountertype@elt@reset{%
      \csname @thm@cntreset@\@thm@resettype\endcsname}%
   \@thm@tempa
   \let\@setcountertype@elt@reset\relax
   \let\@elt\@@elt}
\def\@setcountertype@elt#1{%
   \let\@thm@resettype\@empty
   \let\@thm@countertype\@empty
   \@for\@thm@tempa:=\@thm@tempb\do{%
      \@setcountertype@elt@compare\@thm@resettype{reset}%
      \@setcountertype@elt@compare\@thm@resettype{noreset}%
      \@setcountertype@elt@compare\@thm@countertype\@nil}%
   \expandafter\ifx\csname @gen@thm@cntname@@#1\endcsname\relax
      \edef\@thm@cntname{\csname @gen@thm@cntname@@#1\endcsname}%
      \@setcountertype@elt@reset
   \fi
   \@setcountertype@elt@reset
   \ifx\@thm@countertype\@empty\else
      \expandafter\let
         \csname @gen@thm@default@option@#1\endcsname
         \@thm@countertype
   \fi}
\def\@setcountertype@elt@compare#1#2{%
   \def\@thm@tempz{#2}%
   \ifx\@thm@tempz\@nnil
      \expandafter\ifx
         \csname @gen@thm@format@\@thm@tempa\endcsname
         \relax
      \else
         \ifx#1\@empty \let#1\@thm@tempa \fi
      \fi
   \else
      \ifx\@thm@tempz\@thm@tempa
         \ifx#1\@empty \let#1\@thm@tempa \fi
      \fi
   \fi}
\let\@thm@cntreset@\relax
\def\@thm@cntreset@reset{\@@addtoreset\@thm@cntname{section}}
\def\@thm@cntreset@noreset{\independentof\@thm@cntname{section}}
\if@useamsthm
   \RequirePackage{amsthm}
   \def\newtheoremstyle#1#2#3#4#5#6#7#8#9{%
      \ClassWarning{\@thisclass}{\string\newtheoremstyle\space is ignored}}
   \def\swapnumbers{\ClassWarning{\@thisclass}{%
      Use of \string\swapnumber\space is not allowed}}
\fi
\newcount\@thmid
\global\@thmid\z@
\toks@\expandafter{\@init@article@data \global\@thmid\z@}
\edef\@init@article@data{\the\toks@}
\def\newtheorem{\@ifstar{\@newtheorem{empty}}{\@newtheorem{default}}}
\def\@newtheorem#1#2{%
   \def\@thm@envname{#2}%
   \@cons\@list@of@thmtype@env{{#2}}%
   \@ifnextchar[{\@newthm@with@sharing@env{#1}}{\@newthm{#1}}}
\def\@newthm#1#2{%
   \expandafter\@ifdefinable\csname\@thm@envname\endcsname
     {\global\advance\@thmid\@ne
      \@nameedef{@gen@thm@cntname@@\@thm@envname}{%
         thmcnt\romannumeral\@thmid}%
      \@ifundefined{c@thmcnt\romannumeral\@thmid}%
         {\newcounter{thmcnt\romannumeral\@thmid}}\relax
      \setcounter{thmcnt\romannumeral\@thmid}\z@
      \expandafter\let
         \csname c@\@thm@envname\expandafter\endcsname
         \csname c@thmcnt\romannumeral\@thmid\endcsname
      \expandafter\edef\csname the\@thm@envname\endcsname{%
         \noexpand\@arabic
         \expandafter\noexpand\csname c@\@thm@envname\endcsname}%
      \expandafter\let\csname p@\@thm@envname\endcsname\@empty
      \expandafter\let\csname cl@\@thm@envname\endcsname\@empty
      \@nameedef{cl@thmcnt\romannumeral\@thmid}{%
         \expandafter\noexpand\csname cl@\@thm@envname\endcsname}%
      \let\@@elt\@elt
      \edef\@elt##1{\noexpand\independentof
         {thmcnt\romannumeral\@thmid}{##1}}%
      \cl@@ckpt
      \let\@elt\@@elt
      \toks@\expandafter{\@thm@headerfont}%
      \@temptokena\expandafter{\@thm@bodyfont}%
      \@nameedef{\@thm@envname}{%
         \noexpand\@gen@begintheorem
         {\@thm@envname}{thmcnt\romannumeral\@thmid}{#2}%
         {\the\toks@}{\the\@temptokena}{\z@ \@plus \p@}}%
      \@namedef{end\@thm@envname}{\@endtheorem}
      \@namedef{@gen@thm@default@option@\@thm@envname}{#1}}%
   \@ifnextchar[\@newthm@set@parent\relax}
\def\@newthm@set@parent[#1]{%
   \@nameedef{the\@thm@envname}{%
      \expandafter\noexpand\csname the#1\endcsname.%
      \noexpand\@arabic
      \expandafter\noexpand\csname c@\@thm@envname\endcsname}%
   \@addtoreset{thmcnt\romannumeral\@thmid}{#1}}
\def\@nameedef#1{\expandafter\edef\csname #1\endcsname}
\def\@newthm@with@sharing@env#1[#2]#3{%
   \expandafter\@ifdefinable\csname\@thm@envname\endcsname
     {\edef\@tempa{\@nameuse{@gen@thm@cntname@@#2}}%
      \@nameedef{@gen@thm@cntname@\@thm@envname}{\@tempa}%
      \expandafter\let
         \csname c@\@thm@envname\expandafter\endcsname
         \csname c@\@tempa\endcsname
      \expandafter\edef\csname the\@thm@envname\endcsname{%
         \expandafter\noexpand\csname the#2\endcsname}%
      \expandafter\let\csname p@\@thm@envname\endcsname\@empty
      \expandafter\let\csname cl@\@thm@envname\endcsname\@empty
      \toks@\expandafter{\@thm@headerfont}%
      \@temptokena\expandafter{\@thm@bodyfont}%
      \@nameedef{\@thm@envname}{%
         \noexpand\@gen@begintheorem
         {\@thm@envname}{\@tempa}{#3}%
         {\the\toks@}{\the\@temptokena}{\z@ \@plus \p@}}%
      \@namedef{end\@thm@envname}{\@endtheorem}%
      \@namedef{@gen@thm@default@option@\@thm@envname}{#1}}}
\def\theoremstyle#1{%
   \@ifundefined{@thm@#1}%
      {\if@useamsthm \def\@tempa{\PackageWarning{amsthm}}%
       \else         \def\@tempa{\ClassWarning{\@thisclass}}%
       \fi
       \@tempa{Unknown theoremstyle `#1' (using `plain')}%
       \@thm@plain}%
      {\@nameuse{@thm@#1}}}
\def\@thm@plain{%
   \def\@thm@headerfont{\bfseries\boldmath}%
   \def\@thm@bodyfont{\itshape}}
\def\@thm@definition{%
   \def\@thm@headerfont{\bfseries\boldmath}%
   \def\@thm@bodyfont{\normalfont}}
\let\@thm@remark\@thm@definition
\theoremstyle{plain}
\toks@\expandafter{\@init@article@data \theoremstyle{plain}}
\edef\@init@article@data{\the\toks@}
\def\THMlike#1{%
   \@gen@begintheorem{THMlike}{}{#1}%
   {\bfseries\boldmath}{\normalfont}{\z@ \@plus \p@}<empty>}
\def\endTHMlike{\@gen@endtheorem}
\def\@gen@thm@default@option@THMlike{empty}
\if@useamsthm
   \def\proof{\@testopt\@proof{\proofname}}
   \def\@proof[#1]{\par
      \pushQED{\qed}%
      \normalfont
      \trivlist \topsep \z@\@plus\p@
      \item[%
         \hskip\labelsep\hskip20\p@
         \itshape #1\@addpunct{.}]\ignorespaces}
   \def\endproof{%
      \popQED
      \endtrivlist
      \@endpefalse}
\else
   \def\proof{\@testopt\@proof{\proofname}}
   \def\@proof[#1]{%
      \@gen@begintheorem*{proof}{}{#1}%
         {\itshape}{\normalfont}{\z@ \@plus \p@}%
         <empty>\ignorespaces}
   \def\endproof{%
      \qed
      \@gen@endtheorem}
\fi
\let\Proof\proof
\let\endProof\endproof
\def\proofname{Proof}
\toks@\expandafter{\@init@article@data \def\proofname{Proof}}
\edef\@init@article@data{\the\toks@}
\def\QEDstyle#1{\@ifundefined{@QEDstyle@#1}{}{\def\@curr@QEDstyle{#1}}}
\def\@QEDstyle@empty{\relax}
\let\@QEDstyle@nothing\@QEDstyle@empty
\def\@QEDstyle@box{\QEDbox}
\def\QEDbox{%
   \hbox{%
      \vrule \@width .3\p@ \@height7.3\p@ \@depth.3\p@ \kern-.3\p@
      \vrule \@width7.6\p@ \@height   \z@ \@depth.3\p@ \kern -7.6\p@
      \vrule \@width7.6\p@ \@height7.3\p@ \@depth-7\p@
      \kern-.3\p@ \vrule \@width.3\p@ \@height7.3\p@ \@depth.3\p@}}
\def\@QEDstyle@QED{\textnormal{\normalcolor Q.E.D.}}
\def\qedsymbol{\@nameuse{@QEDstyle@\@curr@QEDstyle}}
\if@useamsthm\else
   \DeclareRobustCommand*{\qed}{%
      \ifmmode\else
         \leavevmode\unskip\penalty9999 \hbox{}\nobreak\hfill
      \fi
      \quad\hbox{\qedsymbol}}
\fi
\def\article#1{%
   \IfFileExists{#1}%
      {\begingroup
       \global\advance\@articleid\@ne
       \if@filesw
          \immediate\write\@auxout{%
             \string\@articledata{#1}{{\the\@articleid}{\the\c@page}}^^J%
             \string\@switch@tocfile{\the\@articleid}}%
       \else
          \expandafter\ifx\csname @articledata@for@#1\endcsname\relax\else
             \edef\@article@tempa{\csname @articledata@for@#1\endcsname}%
             \expandafter\@split@article@data\@article@tempa\@empty\@empty
          \fi
       \fi
       \edef\@PJA@PII{%
          pja\ifnum\@vol<100 0\fi\number\@vol
          a\two@digits\@no-\two@digits\@articleid}%
       \begingroup
       \let\@elt\@stpelt
       \cl@@article
       \endgroup
       \let\label\@article@label
       \let\ltx@label\@article@label%%% for amsmath package
       \let\ref\@article@ref
       \let\pageref\@article@pageref
       \edef\@ref@prefix{\the\@articleid:}%
       \@init@article@data
       \clubpenalty\@clubpenalty
       \@@input\@filef@und
       \stoptext\clearpage
       \endgroup}%
      {\typeout{No file #1.}}}
\newcount\@articleid
\global\@articleid\z@
\def\@split@article@data#1#2{%
   \afterassignment\remove@to@nnil
   \global\@articleid0#1\relax\@nnil
   \afterassignment\remove@to@nnil
   \global\c@page0#2\relax\@nnil}
\def\@articledata#1#2{%
   \expandafter\gdef\csname @articledata@for@#1\endcsname{#2}}
\def\@article@ref#1{%
   \expandafter\@setref\csname r@\@ref@prefix#1\endcsname
   \@firstoftwo{#1}}
\def\@article@pageref#1{%
   \expandafter\@setref\csname r@\@ref@prefix#1\endcsname
   \@secondoftwo{#1}}
\def\@article@label#1{%
   \@bsphack
   \protected@write\@auxout{}%
      {\string\newlabel{\@ref@prefix#1}{{\@currentlabel}{\thepage}}}%
   \@esphack}
\def\@setref#1#2#3{%
   \ifx#1\relax
      \protect\G@refundefinedtrue
      \nfss@text{\reset@font\bfseries ??}%
      \@latex@warning{%
         Reference `#3' on page \thepage \space undefined}%
   \else
      {\expandafter#2#1}\null
   \fi}
\let\@ref@prefix\@empty
\def\listoffigures{%
   \ClassWarning{\@thisclass}{\string\listoffigures\space is not supported}}
\def\listoftables{%
   \ClassWarning{\@thisclass}{\string\listoftables\space is not supported}}
\def\@pnumwidth{1.5em}
\def\@tocrmarg{2em}
\def\@dotsep{3}
\setcounter{tocdepth}{2}
\let\tocdate\gobble
\let\volumetoc\relax
\newdimen\@lnumwidth
\def\numberline#1{\hbox to\@lnumwidth{#1\hfil}}
\def\@dottedtocline#1#2#3#4#5{%
   \ifnum #1>\c@tocdepth\else
     {\leftskip#2\relax
      \rightskip\@tocrmarg \parfillskip -\rightskip
      \parindent#2\relax\@afterindenttrue
      \interlinepenalty\@M
      \leavevmode
      \@lnumwidth #3\relax
      \advance\leftskip\@lnumwidth
      \null \hskip-\leftskip
      {#4}\nobreak\enspace
      \leaders\hbox{$\m@th \mkern\@dotsep mu.\mkern\@dotsep mu$}\hfill
      \nobreak
      \setbox\z@\hbox{{\normalfont\normalcolor #5}}%
      \ifdim\@pnumwidth>\wd\z@
         \hbox to\@pnumwidth{\hss\unhbox\z@}%
      \else
         \box\z@
      \fi
      \par}%
   \fi}
\def\tableofcontents{%
   \section*{\contentsname}\leavevmode\par\nobreak
   \begingroup
   \edef\@tempa{\noexpand\@input{%
      \jobname.toc\ifnum\@articleid>\z@ \the\@articleid \fi}}%
   \@tempa
   \endgroup
   \par\bigskip}
\let\@switch@tocfile\@gobble
\def\@switch@tocfile@#1{%
   \if@filesw
      \expandafter\if \csname tf@toc\endcsname\relax
         \newwrite\tf@toc
      \else
         \immediate\closeout\tf@toc
      \fi
      \immediate\openout\tf@toc=\jobname.toc#1\relax
   \fi}
\AtBeginDocument{%
   \if@filesw \immediate\write\@mainaux{\string\@switch@tocfile{}}\fi}
\AtEndDocument{\let\@switch@tocfile\@switch@tocfile@}
\def\l@section#1#2{%
   \ifnum\c@tocdepth>\z@
      \addpenalty{\@secpenalty}%
      \begingroup
      \parindent\z@ \rightskip\@pnumwidth \parfillskip-\rightskip
      \leavevmode\bfseries
      \setlength\@lnumwidth{1.5em}%
      \advance\leftskip\@lnumwidth \hskip-\leftskip
      #1\nobreak\hfil\nobreak\hbox to\@pnumwidth{\hss#2}\par
      \endgroup
   \fi}
\def\l@subsection{\@dottedtocline{2}{1.5em}{2.3em}}
\def\l@subsubsection{\@dottedtocline{3}{3.8em}{3.2em}}
\def\l@paragraph{\@dottedtocline{4}{7.0em}{4.1em}}
\def\l@subparagraph{\@dottedtocline{5}{10em}{5em}}
\newdimen\@bib@labelwd
\newif\if@adjust@biblabelwd
\def\newblock{\hskip.11em\@plus.33em\@minus.07em}
\def\thebibliography#1{%
   \if@noskipsec \leavevmode \fi
   \ifhmode \unskip\par \fi
   \addvspace{1.667\defaultbaselineskip}%
   \begingroup\centering
   \bfseries \refname\par
   \endgroup
   \nobreak
   \vskip.5\defaultbaselineskip
   \small%
   \list
      {\@biblabel{\@arabic\c@enumiv}}%
      {\def\@tempa{#1}%
       \dimen@ 17\p@
       \ifx\@tempa\@empty
          \@adjust@biblabelwdfalse
       \else
          \setbox\z@\hbox{[#1]}%
          \ifdim\wd\z@>\dimen@ \dimen@\wd\z@ \fi
          \@adjust@biblabelwdtrue
       \fi
       \@bib@labelwd\dimen@
       \leftmargin 11mm\relax
       \labelsep   .5em\relax
       \itemindent -2mm\relax
       \@beginparpenalty\@M
       \@itempenalty-\@lowpenalty
       \labelwidth\leftmargin \advance\labelwidth-\labelsep
       \advance\labelwidth\itemindent
       \usecounter{enumiv}%
       \let\p@enumiv\@empty
       \def\theenumiv{\@arabic\c@enumiv}}%
   \sloppy
   \clubpenalty4000
   \@clubpenalty\clubpenalty
   \widowpenalty4000
   \sfcode`\.\@m
   \interlinepenalty\@M}
\def\endthebibliography{%
   \def\@noitemerr{\@latex@warning{Empty `thebibliography' environment}}%
   \endlist}
\def\@bibitem#1{%
   \item
   \if@filesw
      \immediate\write\@auxout{%
         \string\bibcite{\@ref@prefix#1}{\the\value{\@listctr}}}%
   \fi
   \ignorespaces}
\def\@lbibitem[#1]#2{%
   \item[\@biblabel{#1}\hfill]%
   \if@filesw
      {\let\protect\noexpand
       \immediate\write\@auxout{\string\bibcite{\@ref@prefix#2}{#1}}}%
   \fi
   \ignorespaces}
\def\@citex[#1]#2{%
   \let\@citea\@empty
   \@cite{\@for\@citeb:=#2\do{%
      \@citea\def\@citea{,\penalty\@m\ }%
      \edef\@citeb{\expandafter\@firstofone\@citeb\@empty}%
      \if@filesw\immediate\write\@auxout{\string\citation{\@citeb}}\fi
      \@ifundefined{b@\@ref@prefix\@citeb}%
         {\mbox{\reset@font\bfseries ?}%
          \G@refundefinedtrue
          \@latex@warning{Citation `\@citeb'
             on page \thepage \space undefined}}%
         {\hbox{\csname b@\@ref@prefix\@citeb\endcsname}}}}{#1}}
\def\@cite#1#2{{\upshape[#1\if@tempswa , #2\fi]}}
\def\@biblabel#1{%
   \setbox\z@\hbox{[\hss#1\hss]}%
   \if@adjust@biblabelwd
      \ifdim\wd\z@<\@bib@labelwd
         \setbox\z@\hbox to\@bib@labelwd{\unhbox\z@}%
      \fi
   \fi
   \box\z@
   \hfill}
\def\bysame{\leavevmode\hbox to3em{\hrulefill}\thinspace}
\def\MR#1{%
   \relax\ifhmode\unskip\spacefactor3000 \space\fi
   \def\@tempa##1:##2:##3\@nil{%
      \ifx @##2\@empty##1\else\textbf{##1:}##2\fi}%
   MR \@tempa#1:@:\@nil}
\newbox\@leftcolumn@top
\newbox\@leftcolumn@bot
\newbox\@leftcolumn@footnotes
\newbox\@column@top
\newbox\@column@bot
\newbox\@column@footnotes
\def\@combinefloats{%
   \ifx\@toplist\@empty \global\setbox\@column@top\box\voidb@x
   \else                \@cflt
   \fi
   \ifx\@botlist\@empty \global\setbox\@column@bot\box\voidb@x
   \else                \@cflb
   \fi
   \if@twocolumn\else
      \@@combinefloats
         \@outputbox\@column@top\@outputbox\@column@bot\@column@footnotes
         {\dimen@\dp\@outputbox}{\vskip-\dimen@}%
   \fi}
\def\@@combinefloats#1#2#3#4#5#6#7{%
   \global\setbox#1\vbox{%
      \boxmaxdepth\maxdepth
      \ifvoid#2\else
         \unvbox#2%
         \vskip-\floatsep
         \vskip\textfloatsep
      \fi
      #6%
      \unvbox#3%
      \ifvoid#4\else
         #7%
         \vskip\textfloatsep
         \unvbox#4%
         \vskip-\floatsep
      \fi
      \@textbottom
      \ifvoid#5\else \unvbox#5\fi}}
\def\@cflt{%
   \let\@elt\@comflelt
   \setbox\@tempboxa\vbox{}%
   \@toplist
   \global\setbox\@column@top\box\@tempboxa
   \let\@elt\relax
   \xdef\@freelist{\@freelist\@toplist}%
   \global\let\@toplist\@empty}
\def\@cflb{%
   \let\@elt\@comflelt
   \setbox\@tempboxa\vbox{}%
   \@botlist
   \global\setbox\@column@bot\box\@tempboxa
   \let\@elt\relax
   \xdef\@freelist{\@freelist\@botlist}%
   \global\let\@botlist\@empty}
\def\@combinedblfloats{%
   \ifx\@dbltoplist\@empty\else
      \setbox\@tempboxa\vbox{}%
      \let\@elt\@comdblflelt
      \@dbltoplist
      \let\@elt\relax
      \xdef\@freelist{\@freelist\@dbltoplist}%
      \global\let\@dbltoplist\@empty
      \setbox\@outputbox\vbox to\textheight{%
         \unvbox\@tempboxa\vskip-\dblfloatsep
         \vskip\dbltextfloatsep
         \box\@outputbox}%
   \fi}
\def\@comdblflelt#1{%
   \setbox\@tempboxa\vbox{%
      \unvbox\@tempboxa
      \box#1\vskip\dblfloatsep}}
\def\@makecol{%
   \setbox\@outputbox\box\@cclv%
   \xdef\@freelist{\@freelist\@midlist}%
   \global\let\@midlist\@empty
   \ifvoid\footins
      \global\setbox\@column@footnotes\box\voidb@x
   \else
      \global\setbox\@column@footnotes\vbox{\@add@footnote}%
   \fi
   \@combinefloats
   \global\maxdepth\@maxdepth}
\def\@add@footnote{%
   \vskip\skip\footins
   \color@begingroup
   \normalcolor
   \footnoterule
   \unvbox\footins
   \color@endgroup}
\def\@outputdblcol{%
   \if@firstcolumn
      \global\@firstcolumnfalse
      \global\setbox\@leftcolumn\box\@outputbox
      \global\setbox\@leftcolumn@top\box\@column@top
      \global\setbox\@leftcolumn@bot\box\@column@bot
      \global\setbox\@leftcolumn@footnotes\box\@column@footnotes
   \else
      \global\@firstcolumntrue
      \@@combinefloats
         \@ne\@leftcolumn@top\@leftcolumn
         \@leftcolumn@bot\@leftcolumn@footnotes
         {\dimen@\dp\@leftcolumn}{\vskip-\dimen@}%
      \@@combinefloats
         \thr@@\@column@top\@outputbox\@column@bot\@column@footnotes
         {\dimen@\dp\@outputbox}{\vskip-\dimen@}%
      \setbox\@outputbox\vbox{%
         \hb@xt@\textwidth{%
            \hb@xt@\columnwidth{%
               \vbox to\@colht{\unvbox\@ne}%
               \hss}%
            \hfil
            \vrule\@width\columnseprule
            \hfil
            \hb@xt@\columnwidth{%
               \vbox to\@colht{\unvbox\thr@@}%
               \hss}}}%
      \@combinedblfloats
      \@outputpage
      \begingroup
         \@dblfloatplacement
         \@startdblcolumn
         \@whilesw\if@fcolmade\fi{\@outputpage\@startdblcolumn}%
      \endgroup
   \fi}
\def\stoptext{%
   \if@noskipsec \leavevmode \fi
   \ifhmode \unskip\par \fi
   \if@twocolumn
      \def\@tempa{\vbox{}\penalty-\@Mv}%
      \ifdim\pagetotal<\topskip
         \if@firstcolumn \let\@tempa\relax \fi
      \fi
      \@tempa
   \fi}
\expandafter\def\expandafter\enddocument\expandafter{%
   \expandafter\stoptext\expandafter\cleardoublepage\enddocument}
\mathchardef\@Mv=10005\relax
\def\@specialoutput{%
   \ifnum \outputpenalty>-\@Mii
      \@doclearpage
   \else
      \ifnum\outputpenalty<-\@Miii
         \ifnum\outputpenalty<-\@MM \deadcycles\z@ \fi
         \ifnum\outputpenalty=-\@Mv
            \@exec@stoptext
         \else
            \global\setbox\@holdpg\vbox{\unvbox\@cclv}%
         \fi
      \else
         \global\setbox\@holdpg\vbox{%
            \unvbox\@holdpg
            \unvbox\@cclv
            \setbox\@tempboxa \lastbox
            \unskip}%
         \@pagedp\dp\@holdpg
         \@pageht\ht\@holdpg
         \unvbox\@holdpg
         \@next\@currbox\@currlist
           {\ifnum\count\@currbox>\z@
               \advance\@pageht\@pagedp
               \ifvoid\footins\else
                  \advance\@pageht\ht\footins
                  \advance\@pageht\skip\footins
                  \advance\@pageht\dp\footins
               \fi
               \ifvbox\@kludgeins
                  \ifdim\wd\@kludgeins=\z@
                     \advance\@pageht\ht\@kludgeins
                  \fi
               \fi
               \@reinserts
               \@addtocurcol
            \else
               \@reinserts
               \@addmarginpar
            \fi}%
         \@latexbug
         \ifnum\outputpenalty<\z@
            \if@nobreak \nobreak
            \else       \addpenalty\interlinepenalty
            \fi
         \fi
      \fi
   \fi}
\def\@exec@stoptext{%
   \@makecol
   \global\setbox\@outputbox\vbox{%
      \unvbox\@outputbox
      \setbox\z@\lastbox
      \unskip}%
   \dimen@\defaultbaselineskip \advance\dimen@-\topskip
   \if@firstcolumn
      \global\setbox\@ne\box\voidb@x
      \global\setbox\thr@@\copy\@outputbox
      \global\@firstcolumnfalse
      \global\setbox\@leftcolumn@top\box\@column@top
      \global\setbox\@leftcolumn@bot\box\@column@bot
      \global\setbox\@leftcolumn@footnotes\box\@column@footnotes
   \else
      \global\setbox\@ne\copy\@outputbox
      \global\setbox\thr@@\copy\@leftcolumn
      \global\setbox\@outputbox\vbox{%
         \advance\dimen@-\dp\@leftcolumn
         \unvbox\@leftcolumn
         \vskip\dimen@
         \unvbox\@outputbox}%
   \fi
   \@make@balanced@columns
   \def\@textbottom{\vskip\z@ \@plus.0001fil}%
   \@outputdblcol}
\def\@make@balanced@columns{%
   \dimen4 \textfloatsep \advance\dimen4 -\floatsep
   \dimen6 \ht\@leftcolumn@top         \advance\dimen6 \dp\@leftcolumn@top
   \ifvoid\@leftcolumn@top\else \advance\dimen6 \dimen4 \fi
   \advance\dimen6 \ht\@leftcolumn@bot \advance\dimen6 \dp\@leftcolumn@bot
   \ifvoid\@leftcolumn@bot\else \advance\dimen6 \dimen4 \fi
   \advance\dimen8 \ht\@column@top    \advance\dimen8 \dp\@column@top
   \ifvoid\@column@top\else \advance\dimen8 \dimen4 \fi
   \advance\dimen8 \ht\@column@bot    \advance\dimen8 \dp\@column@bot
   \ifvoid\@column@bot\else \advance\dimen8 \dimen4 \fi
   \dimen@\dimen6 \advance\dimen@-\dimen8
   \dimen@ii\ht\@outputbox \advance\dimen@ii\dp\@outputbox
   \@tempdima\dimen@ii \advance\@tempdima-\dimen@
   \@tempdimb\dimen@ii \advance\@tempdimb\dimen@
   \divide\@tempdima\tw@ \divide\@tempdimb\tw@
   \ifdim\@tempdima<\z@
      \global\setbox\@leftcolumn\box\voidb@x
   \else
      \ifdim\@tempdimb<\z@
         \global\setbox\@leftcolumn\box\@outputbox
      \else
         \@find@split@size
      \fi
   \fi}
\def\@find@split@size{%
   \begingroup
   \vfuzz\maxdimen \vbadness\@M
   \splittopskip\topskip
   \@find@split@size@loop{%
      \@tempdimb\ht4             \advance\@tempdimb\dp4
      \advance\@tempdimb-\ht\tw@ \advance\@tempdimb-\dp\tw@
      \advance\@tempdimb\dimen@  \advance\@tempdimb\@columns@htfuzz\relax
      \ifdim\@tempdimb>\z@ \@tempswafalse \fi}%
   \@tempdimb\ht4 \advance\@tempdimb\dp4 \advance\@tempdimb\dimen6
   \advance\@tempdimb\ht\@leftcolumn@footnotes
   \advance\@tempdimb\dp\@leftcolumn@footnotes
   \ifdim\@tempdimb>\@colht
      \global\setbox\@leftcolumn\box\thr@@
      \global\setbox\@outputbox\box\@ne
   \else
      \dimen@ii\dimen8
      \advance\dimen@ii\ht\@column@footnotes
      \advance\dimen@ii\dp\@column@footnotes
      \@tempdimb\ht\tw@ \advance\@tempdimb\dp\tw@
      \advance\@tempdimb\dimen@ii
      \ifdim\@tempdimb>\@colht
         \@find@split@size@loop{%
            \@tempdimb\ht\tw@ \advance\@tempdimb\dp\tw@
            \advance\@tempdimb\dimen@ii
            \ifdim\@tempdimb>\@colht\else \@tempswafalse \fi}%
      \fi
      \global\setbox\@leftcolumn\box4
      \global\setbox\@outputbox\box\tw@
      \global\setbox\@ne\box\voidb@x
      \global\setbox\thr@@\box\voidb@x
   \fi
   \endgroup}
\def\@find@split@size@loop#1{%
   \@tempswatrue
   \@whilesw\if@tempswa\fi{%
      \setbox\tw@\copy\@outputbox
      \setbox4 \vsplit\tw@ to\@tempdima
      \ifvoid\tw@ \@tempswafalse \fi
      \setbox\tw@\vbox{\unvbox\tw@}%
      \setbox4\vbox{\unvbox4}%
      #1%
      \if@tempswa \advance\@tempdima.25\defaultbaselineskip \fi}}
\def\@columns@htfuzz{\p@}
\def\@list@of@ignore@files{%
   {theorem.sty}{amsthm.sty}{cite.sty}{overcite.sty}%
   {ftnright.sty}{multicol.sty}{geometry.sty}%
   {float.sty}{prettyref.sty}{varioref.sty}}%
\newif\if@ignore@file
\def\@check@ignore@files#1{%
   \@ignore@filefalse
   \edef\@tempa{#1}\@onelevel@sanitize\@tempa
   \def\@tempb{\@tfor\@tempb:=}%
   \expandafter\@tempb\@list@of@ignore@files\do{%
      \@onelevel@sanitize\@tempb
      \ifx\@tempa\@tempb
         \ClassWarningNoLine{\@thisclass}{%
            File `\@tempa' can not be used with this class,\MessageBreak
            or that file is already loaded}%
         \@ignore@filetrue
         \@break@tfor
      \fi}}
\let\@LaTeX@onefilewithoptions\@onefilewithoptions
\def\@onefilewithoptions#1[#2][#3]#4{%
   \@check@ignore@files{#1.#4}%
   \if@ignore@file
      \let\@tempa\@empty
   \else
      \def\@tempa{\@LaTeX@onefilewithoptions{#1}[{#2}][{#3}]{#4}}%
   \fi
   \@tempa}
\gdef\@missingfileerror#1#2{%
   \typeout{^^J! LaTeX Error: File `#1.#2' not found.^^J^^J%
      Type X to quit or <RETURN> to proceed,^^J%
      or enter new name. (Default extension: #2)^^J}%
   \message{Enter file name: }%
   {\endlinechar\m@ne
   \global\read\m@ne to\@gtempa}%
   \ifx\@gtempa\@empty\else
      \def\reserved@a{x}\ifx\reserved@a\@gtempa\batchmode\@@end\fi
      \def\reserved@a{X}\ifx\reserved@a\@gtempa\batchmode\@@end\fi
      \filename@parse\@gtempa
      \edef\filename@ext{%
         \ifx\filename@ext\relax#2\else\filename@ext\fi}%
      \@check@ignore@files{\filename@base.\filename@ext}%
      \if@ignore@file
         \let\reserved@a\@empty
      \else
         \edef\reserved@a{%
            \noexpand\InputIfFileExists
               {\filename@area\filename@base.\filename@ext}%
               {}%
               {\noexpand\@missingfileerror
                  {\filename@area\filename@base}{\filename@ext}}}%
      \fi
      \reserved@a
   \fi}
\def\cleardoublepage{%
   \clearpage
   \if@twoside
      \ifodd\c@page\else
         \hbox{}\thispagestyle{empty}\newpage
         \if@twocolumn \hbox{}\newpage \fi
      \fi
   \fi}
\def\@refname@english{References}
\def\@refname@french{R\'ef\'erences}
\let\refname\@refname@english
\def\figurename{Fig.}
\def\tablename{Table}
\def\appendixname{Appendix}
\def\abstractname{Abstract}
\def\contentsname{Contents}
\def\today{%
   \ifcase\month\or
      Jan.\or Feb.\or   March\or April\or May\or  June\or
      July\or August\or Sept.\or Oct.\or  Nov.\or Dec.\else\fi
   ~\the\day,~\the\year}
\expandafter\let\csname \string\OT1\string\.-\string\i\endcsname\relax
\expandafter\let\csname \string\T1\string\.-\string\i\endcsname\relax
\pagestyle{headings}
\pagenumbering{arabic}
\twocolumn
\binoppenalty\@lowpenalty
\predisplaypenalty\@lowpenalty
\postdisplaypenalty\@lowpenalty
\relpenalty\@lowpenalty
\flushbottom
\sloppy
\let\nosloppy\fussy

\endinput
%%
%% End of file `pja00.cls'.
