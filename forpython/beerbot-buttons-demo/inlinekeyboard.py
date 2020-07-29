#!/usr/bin/env python
# -*- coding: utf-8 -*-
# This program is dedicated to the public domain under the CC0 license.

"""
Basic example for a bot that uses inline keyboards.
"""
import logging
from telegram_token import TOKEN
from telegram import InlineKeyboardButton, InlineKeyboardMarkup
from telegram.ext import Updater, CommandHandler, CallbackQueryHandler
import json
from jinja2 import Template

#global const's
with open("beerlist.json") as f: BEERLIST = json.load(f)
logging.basicConfig(format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
                    level=logging.INFO)
logger = logging.getLogger(__name__)
#global var's
beer_amounts = {k:0.0 for k in BEERLIST}


def get_reply_markup():
    beernames = []
    #maxlen = 0
    total = 0.0
    total_vol = 0.0
    for b in BEERLIST:
#        nn = f"{b}: {beer_amounts[b]} л. {beer_amounts[b]*BEERLIST[b]} грн."
#        maxlen = max(maxlen,len(nn))
#        beernames.append(nn)
        total += beer_amounts[b]*BEERLIST[b]
        total_vol += beer_amounts[b]
    keyboard = [*[
            [InlineKeyboardButton(name, callback_data=f"none"),
                *[InlineKeyboardButton(f"{k}0.5",callback_data=json.dumps([k,name])) for k in "+-"],
                InlineKeyboardButton(f"{beer_amounts[name]} л. {beer_amounts[name]*BEERLIST[name]} грн.",callback_data="none"),
                ] 
            for i,name
            in enumerate(BEERLIST)
            ],[InlineKeyboardButton(f"Заказать {total_vol} л. {total} грн.",callback_data="done")]]

    reply_markup = InlineKeyboardMarkup(keyboard)
    return reply_markup,total
def start(update, context):
    update.message.reply_text('Please choose:', reply_markup=get_reply_markup()[0])


def button(update, context):
    query = update.callback_query

    # CallbackQueries need to be answered, even if no notification to the user is needed
    # Some clients may have trouble otherwise. See https://core.telegram.org/bots/api#callbackquery
    query.answer()

    if(query.data=="none"):
        pass
    elif query.data.startswith("done"):
        query.edit_message_text(text="done")
    else:
        k,name = tuple(json.loads(query.data))
        if k == "-" :
            if beer_amounts[name]>0:
                beer_amounts[name] -= 0.5
        else:
            beer_amounts[name] += 0.5
        query.edit_message_text(text="sel",reply_markup=get_reply_markup()[0])


def help_command(update, context):
    update.message.reply_text("Use /start to test this bot.")


def main():
    # Create the Updater and pass it your bot's token.
    # Make sure to set use_context=True to use the new context based callbacks
    # Post version 12 this will no longer be necessary
    updater = Updater(TOKEN, use_context=True)

    updater.dispatcher.add_handler(CommandHandler('start', start))
    updater.dispatcher.add_handler(CallbackQueryHandler(button))
    updater.dispatcher.add_handler(CommandHandler('help', help_command))

    # Start the Bot
    updater.start_polling()

    # Run the bot until the user presses Ctrl-C or the process receives SIGINT,
    # SIGTERM or SIGABRT
    updater.idle()


if __name__ == '__main__':
    main()
