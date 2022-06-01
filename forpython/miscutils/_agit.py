"""===============================================================================

        FILE: miscutils/_agit.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2022-05-25T13:00:56.670813
    REVISION: ---

==============================================================================="""

import uuid


def get_random_fn(ext=".txt"):
    assert ext.startswith(".")
    return f"/tmp/{uuid.uuid4()}{ext}"
