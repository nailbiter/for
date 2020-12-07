"""===============================================================================

        FILE: fordatawise/_virtualenv_manager/system.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-11-06T13:13:32.753853
    REVISION: ---

==============================================================================="""
from subprocess import call, getoutput
from _virtualenv_manager import add_logger
import logging
from _virtualenv_manager.add_logger import add_logger


@add_logger
def system(cmd, logger=None, dry_run=False):
    logger.info(f"> {cmd}")
    if not dry_run:
        return call(cmd, shell=True)
