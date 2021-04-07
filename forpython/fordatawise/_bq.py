"""===============================================================================

        FILE: ./fordatawise/_bq.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-04-07T12:09:35.428045
    REVISION: ---

==============================================================================="""

import logging
import click
import os


class CopyJob:
    def __init__(self, destination, dry_run, bq_client):
        self._destination = destination
        self._dry_run = dry_run
        self._bq_client = bq_client
        self._logger = logging.getLogger(self.__class__.__name__)

    def verify(self, source, suffix):
        ds = self._get_destination_split(source,suffix)
        dest = ".".join(ds)
        ts = self._bq_client.get_table(source), self._bq_client.get_table(dest)
        for p in ["num_rows","num_bytes"]:
            x,y = [getattr(t,p) for t in ts]
            if x!=y:
                self._logger.error(f"different {p}: {source}.{p}(={x}) != {dest}.{p}(={y})")
            else:
                self._logger.info(f"same {p}: {source}.{p}(={x}) == {dest}.{p}(={y})")

    def _get_destination_split(self,source,suffix):
        destination_split = self._destination.split(".")
        if len(destination_split) == 2:
            destination_split.append(source.split(".")[-1])
        elif len(destination_split) == 3 and destination_split[-1].endswith("*"):
            destination_split[-1] = destination_split[-1][:-1] + suffix
        return destination_split

    def __call__(self, source, suffix, only_print=False):
        destination_split = self._get_destination_split(source,suffix)
        cmd = f"bq cp \"{source.replace('.',':',1)}\" \"{destination_split[0]}:{'.'.join(destination_split[1:])}\""
        if only_print:
            click.echo(cmd)
        else:
            retcode = system(cmd, self._dry_run)
            assert retcode == 0
            return retcode


def add_logger(f):
    logger = logging.getLogger(f.__name__)

    def _f(*args, **kwargs):
        return f(*args, logger=logger, **kwargs)
    _f.__name__ = f.__name__
    return _f


@add_logger
def system(cmd, dry_run, logger=None):
    logger.info(f"{'x' if dry_run else 'o'}> {cmd}")
    retcode = 0
    if not dry_run:
        retcode = os.system(cmd)
    return retcode
