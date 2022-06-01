#!/usr/bin/env python3
"""===============================================================================

        FILE: ./bin/control

       USAGE: ././bin/control

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com),
ORGANIZATION: 
     VERSION: 0.0.1
     CREATED: 2020-10-01T11:44:12.240332
    REVISION: ---

==============================================================================="""

import click
from subprocess import call
import logging
import webbrowser

def _myexec(cmd):
    _logger = logging.getLogger("_myexec")
    _logger.info(f"> {cmd}")
    call(cmd.split(" "))

@click.group()
@click.option("-d","--debug",is_flag=True)
def control(debug):
    if debug:
        logging.basicConfig(level=logging.INFO)

@control.command()
@click.option("--airflow-port",type=int,default=8080,envvar="CONTROL__START__AIRFLOW_PORT")
def start(airflow_port):
    #FIXME: start docker daemon automatically, if necessary
    _myexec("docker-compose up --build -d")
    _myexec("docker container ls")
    webbrowser.open(f"http://localhost:{airflow_port}")

if __name__=="__main__":
    control()
