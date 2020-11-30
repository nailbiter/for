"""===============================================================================

        FILE: ./fordatawise/_bigfile_in_git_manager/__init__.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-11-20T11:36:05.993267
    REVISION: ---

==============================================================================="""

import logging
from os import system as system_


def add_logger(f):
    logger = logging.getLogger(f.__name__)

    def _f(*args, **kwargs):
        return f(*args, logger=logger, **kwargs)
    return _f

@add_logger
def system(cmd, logger, dry_run=False):
    logger.info(f"> {cmd}")
    if not dry_run:
        system_(cmd)
