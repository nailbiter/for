TeX to Mathematica transpiler written in Scheme
================================================

On a top level, this a transpiler from **LaTeX** to **Mathematica**.
It is extendable, in the sense that it is easy to "teach" the transpiler to understand new functions
(take a look at `comments.txt`).

One of the few problems with this type of software, is that TeX is more of a markup language, than 
a programming language, hence it is not very semantic. Therefore, there are many incompatible ways
to describe a given function. For example, hypergeometric 2F1 can be written either, for example, as

```TeX
${}_2F_1\left( \begin{array}[]{c}\displaystyle
     a,b\\c\end{array};x\right)$
```

(as I do), or maybe

```TeX
$\mathbf{F}\left(a,b,c;x\right)$
```

(as in <https://dlmf.nist.gov/15.2>), or maybe even

```TeX
$F\left[a,b,c,x\right]$.
```

(to be honest, just came up with that last one, but why not?)

Ideally, the transpiler would have to understand *any* version, but here we simplified the task
by doing the following:

1. File `command.txt` contains the names of "non-basic" functions (i.e. the ones that
would have more than one way obvious to be written in TeX), e.g. hypergeometric 2F1 together
with the corresponding Mathematica code and the user's TeX code (e.g. `${}_2F_1\left( \begin{array}[]{c}\displaystyle a,b\\c\end{array};x\right)$` in my case). The user than may customize the TeX code to achieve 
match any of the versions above;
2. `generateTex.scm` generates TeX-file `texmathcmds.tex` based on `commands.txt`. The latter
can be included in user's TeX-file, so now instead of using his or her custom code,
to render, say, hypergeometric 2F1, he or she will use the high-level command `\mytFo` from `texmathcmds.tex`,
the latter command generating user's TeX, as explained in previous item;
3. When transpiler sees `\mytFo` it knows what to expect (again, based on description in `commands.txt`),
and generates the appropriate Mathematica code.

preprocessor.scm
-----------------
The step 3. in previous description deserves a bit more to be said.
Similarly to how one can include preprocessor's directives into C code, `preprocessor.scm` allows
one to include Scheme code into TeX files (in form of comments). 

The transpiling from `.proto.tex` files (which contain expression in LaTeX format and
are included "as is" in `main.tex`) to Mathematica
essentially uses `preprocessor.scm`, using the Scheme annotations in `.proto.tex` files.

Usage
------
1. Enter the directory
2. `make all`
3. Inspect the generated `main.pdf` to see some equations (generated from TeX source in `.proto.tex` files),
 and expect the generated `.m` Mathematica files

Dependencies
--------------

* [Guile](https://www.gnu.org/software/guile/) (probably, any reasonably new version should do, 
but just for your info, I use `Guile 2.2.3`)
* LaTeX
* [GNU make](https://www.gnu.org/software/make/)
* PDF reader
* [Mathematica](https://www.wolfram.com/) (**optional**, only if you want to check the computations)
