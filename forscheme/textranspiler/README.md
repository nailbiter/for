TeX to Mathematica transpiler written in Scheme
================================================

On a top level, this a transpiler from **LaTeX** to **Mathematica**.
It is extendable, in the sense that it is easy to "teach" the transpiler to understand new functions
(take a look at `wolftable.scm`).

One of the few problems with this type of software, is that TeX is more of a markup language, than 
a programming language, hence it is not very semantic. Therefore, there are many incompatible ways
to describe a given function. For example, hypergeometric 2F1 can be written either as

```TeX
\newtheorem{proposition}{Proposition}
```

Here is how it works:

1. 

preprocessor.scm
-----------------
oeusueo

Usage
------
1. Enter the directory
2. `make all`

Dependencies
--------------

* [Guile](https://www.gnu.org/software/guile/)
* LaTeX
* [make](https://www.gnu.org/software/make/)
* [Mathematica](https://www.wolfram.com/) (**optional**, only if you want to check the computations)
