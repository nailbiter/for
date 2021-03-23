#!/usr/bin/env python3
"""===============================================================================

        FILE: transliterate.py

       USAGE: ./transliterate.py

 DESCRIPTION:

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION:
     VERSION: ---
     CREATED: 2021-01-26T21:16:43.351631
    REVISION: ---

==============================================================================="""

import click
import transliterate
import os
import readline
from telegram import InlineKeyboardButton, InlineKeyboardMarkup, KeyboardButton, ReplyKeyboardMarkup
from telegram.ext import Updater, CommandHandler, CallbackQueryHandler, MessageHandler, Filters


def _transliterate(update, context):
    update.message.reply_text(update.message.text)


@click.command()
@click.option("--pbpaste-command", default="xsel --clipboard --input")
@click.option("--mode", type=click.Choice(["telegram", "cli"]), default="cli")
@click.option("--telegram-token", envvar="TELEGRAM_TOKEN")
def transliterate_cli(pbpaste_command, mode, telegram_token):
    if mode == "cli":
        should_continue = True
        saved = None
        readline.parse_and_bind('tab: complete')
        while should_continue:
            s = input("> ")
            s = s.strip()
            if s == "copy":
                cmd = f"""echo "{saved}" | {pbpaste_command} """
                os.system(cmd)
                print(cmd)
            elif s == "":
                should_continue = False
                print("bye")
            else:
                saved = _transliterate(s)
                print(saved)
    elif mode == "telegram":
        assert telegram_token is not None
        updater = Updater(telegram_token, use_context=True)
        updater.dispatcher.add_handler(MessageHandler(
            filters=Filters.all, callback=lambda update, _: update.message.reply_text(_transliterate(update.message.text))))
        updater.start_polling()
        updater.idle()
    else:
        raise NotImplementedError(mode)


def _transliterate(s):
    saved = transliterate.translit(s, "ru")
    saved = saved.replace("Ь", "ь")
    saved = saved.replace("шш", "щ")
    saved = saved.replace("\\", "э")
    return saved


if __name__ == "__main__":
    transliterate_cli()
