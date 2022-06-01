"""===============================================================================

        FILE: _common.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2022-02-13T19:24:31.123106
    REVISION: ---

==============================================================================="""

import json
import pandas as pd

# _PARADIGMS = {
#    "artikeln": [{
#        "content": """
# Kasus	Maskulinum	Femininum	Neutrum	Plural
# Nominativ	der	die	das	die
# Akkusativ	den	die	das	die
# Dativ	dem	der	dem	den
# Genitiv	des	der	des	der
#    """,
#        "index": ["Kasus"],
#        "name":"bestimmt",
#        "column_reordering":["Maskulinum", "Neutrum", "Femininum", "Plural"]
#    },
#        {
#        "content": """
# Kasus	Maskulinum	Femininum	Neutrum
# Nominativ	ein	eine	ein
# Akkusativ	einen	eine	ein
# Dativ	einem	einer	einem
# Genitiv	eines	einer	eines
#        """,
#        "index": ["Kasus"],
#        "name":"unbestimmt",
#        "column_reordering":["Maskulinum", "Neutrum", "Femininum"]
#    }],
# }


def _get_paradigms():
    with open("paradigms.json") as f:
        paradigms = json.load(f)
    return paradigms


def get_paradigm_names():
    return list(_get_paradigms())


def get_paradigm_dfs(paradigm):
    _PARADIGMS = _get_paradigms()
    rs = _PARADIGMS[paradigm]
    dfs = []
    for r in rs:
        content_fn = r.get("content", f"data/{paradigm}/{r['name']}.tsv")
        df = pd.read_csv(content_fn, sep="\t")
        with open(content_fn) as f:
            r["_content"] = f.read()
        if "index" in r:
            df = df.set_index(r["index"])
        if "column_reordering" in r:
            df = df[r["column_reordering"]]
        df.name = r["name"]
        dfs.append(df)
    return dfs
