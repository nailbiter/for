"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/send_notification/send_notification/__init__.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-11-30T14:38:04.610863
    REVISION: ---

==============================================================================="""

import logging
import os
import subprocess

def add_logger(f):
    logger = logging.getLogger(f.__name__)

    def _f(*args, **kwargs):
        return f(*args, logger=logger, **kwargs)
    return _f


@add_logger
def system(cmd, logger, dry_run=False, get_output=False):
    logger.info(f"> {cmd}")
    if not dry_run:
        if get_output:
            return subprocess.getoutput(cmd)
        else:
            os.system(cmd)
