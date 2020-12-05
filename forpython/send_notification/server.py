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

TODO:
    1(done). `telegram` notification media
    3. (bug) make `popup` notification media work
    4. implement own jobs executor -- https://docs.python.org/3/library/asyncio-eventloop.html#asyncio-example-call-later
    5. FIXME: ed74e92a17115a17fd0010c7
    6. refactor `telegram` notification media
    7. support retry
    8. (!)send mail notification (and enable mail popup)
==============================================================================="""

import click
#from _send_notification.server_flask import app
from _send_notification.server_telegrambot import numerical_keyboard
from concurrent import futures
import os

def _start_flask():
    os.system("flask run") #FIXME -- this probably can be done without `os.system`
    #app.run(host='127.0.0.1', port=5000, debug=True)

@click.command()
@click.option("--telegram-token", envvar="TELEGRAM_TOKEN")
@click.option("--only-server/--no-only-server", default=False)
def server(telegram_token,only_server):
    if only_server:
        _start_flask()
    else:
        with futures.ProcessPoolExecutor(max_workers=2) as ex:
            ex.submit(_start_flask)
            ex.submit(numerical_keyboard,telegram_token)
            #app.run(host='127.0.0.1', port=5000, debug=True)
            #numerical_keyboard(telegram_token)

if __name__=="__main__":
    server()
