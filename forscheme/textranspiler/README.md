TeX to Mathematica transpiler written in Scheme
================================================

On a top level, this a transpiler from **LaTeX** to **Mathematica**.
It is extendable, in the sense that it is easy to "teach" the transpiler to understand new functions
(take a look at `wolftable.scm`).

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
