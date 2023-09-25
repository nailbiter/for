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
import logging


def get_random_fn(ext: str = ".txt") -> str:
    assert ext.startswith(".")
    return f"/tmp/{uuid.uuid4()}{ext}"


def filter_safe(
    msg: str,
    sensitive_info: list[str] = [],
    sensitive_info_placeholder: str = "***",
    **_,
) -> str:
    logging.warning(f"sensitive_info: {sensitive_info}")
    for si in sensitive_info:
        msg = msg.replace(si, sensitive_info_placeholder)
    return msg
