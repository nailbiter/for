"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/send_notification/resources/executor.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-12-03T00:06:59.462444
    REVISION: ---

==============================================================================="""

import sys
import os
import logging
import string
import random
from os import path

def _add_logger(f):
    logger = logging.getLogger(f.__name__)

    def _f(*args, **kwargs):
        return f(*args, logger=logger, **kwargs)
    return _f
    logger = logging.getLogger("_system")
@_add_logger
def _system(cmd,logger):
    logger.info(f"> {cmd}")
    retcode = os.system(cmd)
    logger.debug(f"retcode: {retcode}")

_LOG_DIR = "/tmp/executor_log_17a6097921e1b45c"
os.makedirs(_LOG_DIR, exist_ok=True)
random_fn = "".join(random.choices(population=list(string.ascii_letters+string.digits+"_"),k=32))
random_fn = f"{random_fn}.log.txt"
logging.basicConfig(filename=path.join(_LOG_DIR,random_fn),
                    encoding='utf-8', level=logging.DEBUG)
logging.info("here")
args = sys.argv[1:]
logging.info(f"args: {args}")
if len(args)==4:
    script_fn, script_log_fn, retry_num, retry_delay = args
    retry_num, retry_delay = [float(x) for x in [retry_num, retry_delay]]
    _system(f"sh {script_fn} 2>&1 | tee {script_log_fn}")
else:
    logging.info(f"bad args: {args}")
