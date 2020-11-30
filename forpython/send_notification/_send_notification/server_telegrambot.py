"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/send_notification/_send_notification/server_telegrambot.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-11-30T14:45:19.467778
    REVISION: ---

==============================================================================="""


from telegram import InlineKeyboardButton, InlineKeyboardMarkup, KeyboardButton, ReplyKeyboardMarkup
from telegram.ext import Updater, CommandHandler, CallbackQueryHandler, MessageHandler, Filters
from telegram.ext import MessageHandler, Filters
from datetime import datetime, timedelta
from urllib import parse
import logging
from _send_notification import system, add_logger


@add_logger
def _new_timer(update, context, logger):
    _, time, msg = update.message.text.split(" ", maxsplit=2)
    dt = datetime.now()
    if time.startswith("+"):
        dt += timedelta(minutes=int(time[1:]))
    else:
        time_chunks = [time[i:i+2] for i in range(0, len(time), 2)]
        time_chunks = reversed(time_chunks)
        for tc, flag in zip(time_chunks, "minute hour day month year".split(" ")):
            dt = dt.replace(**{flag: (2000 if flag == "year" else 0)+int(tc)})

    msg = parse.quote(msg)
    url = f"localhost:5000/new_timer/{dt.strftime('%Y%m%d%H%M%S')}/{msg}/slack"

    res = system(f"curl \"{url}\"", get_output=True)
    res = res.split("\n")[-1]
    context.bot.send_message(chat_id=update.effective_chat.id, text=res)


def numerical_keyboard(token):
    logging.basicConfig(level=logging.INFO)
    assert token is not None

    updater = Updater(token, use_context=True)
    if updater.bot is None:
        print("bot is None!!")
    bot = updater.bot

    updater.dispatcher.add_handler(CommandHandler('new_timer', _new_timer))
#
#    # Start the Bot
    updater.start_polling()
#
#    # Run the bot until the user presses Ctrl-C or the process receives SIGINT,
#    # SIGTERM or SIGABRT
    updater.idle()
