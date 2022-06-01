"""===============================================================================

        FILE: docker-scripts/tex-japanese-postprocess.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-12-03T16:33:10.169835
    REVISION: ---

==============================================================================="""
import sys
tex_file = sys.argv[1]
japanese_font = "Takao Pゴシック"

with open(tex_file) as f:
    lines = f.readlines()
lines = list(map(lambda s:s.strip(),lines))
lines=[
    lines[0],
    "\\usepackage{xeCJK}",
    f"\\setCJKmainfont{{{japanese_font}}}",
    *lines[1:],
]
with open(tex_file,"w") as f:
    f.write("\n".join(lines))
