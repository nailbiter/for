#!/usr/bin/env python3
from argparse import ArgumentParser
from difflib import ndiff
import re


# global const's
# global var's
# procedures

# main
parser = ArgumentParser(description="prettify java file")
parser.add_argument("filename")
parser.add_argument("--dry_run", "-d", action="store_true")
args = parser.parse_args()
with open(args.filename) as f:
    lines = f.readlines()
package = None
imports = []
for i, line in enumerate(lines):
    m = re.match(r"^(import (?P<import>[\.a-zA-Z0-9_]+);|package (?P<package>[\.a-zA-Z0-9_]+);|\s*)$", line)
    if not m:
        break
    else:
        if m.group("import"):
            imports.append(m.group("import"))
        if m.group("package"):
            package = m.group("package")

body = lines[i:]
imports = sorted(imports)

new_lines = [f"package {package};\n"] + [f"import {i};\n" for i in imports] +  ["\n","\n"] + body
res = "".join(new_lines)

if args.dry_run:
    #diff = ndiff(lines,new_lines)
    ##print(''.join(diff), end="")
    print(res)
else:
    with open(args.filename, "w") as f:
        f.write(res)
