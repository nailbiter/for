#!/usr/bin/env python3
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/send_notification/server.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-11-27T19:49:01.715259
    REVISION: ---

==============================================================================="""

import click
from _send_notification.server_flask import app
from _send_notification.server_telegrambot import numerical_keyboard
from concurrent import futures
from os import system

@click.command()
@click.option("--telegram-token", envvar="TELEGRAM_TOKEN")
def server(telegram_token):
    with futures.ProcessPoolExecutor(max_workers=2) as ex:
        ex.submit(app.run,host='127.0.0.1', port=5000, debug=True)
        #ex.submit(numerical_keyboard,telegram_token)
        #app.run(host='127.0.0.1', port=5000, debug=True)
        #numerical_keyboard(telegram_token)

if __name__=="__main__":
    server()
