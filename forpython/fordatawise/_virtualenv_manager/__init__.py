"""===============================================================================

        FILE: fordatawise/_virtualenv_manager.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION:

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION:
     VERSION: ---
     CREATED: 2020-11-06T11:11:32.510267
    REVISION: ---

==============================================================================="""

from subprocess import call, getoutput
import logging
from _virtualenv_manager._package_name_manager import get_package_name_manager, PackageNameManager
from _virtualenv_manager.system import system



