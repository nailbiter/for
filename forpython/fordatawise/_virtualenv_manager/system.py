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
import logging

def system(cmd):
    _logger = logging.getLogger("system")
    _logger.info(f"> {cmd}")
    return call(cmd, shell=True)
