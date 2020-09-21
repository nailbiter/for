#!/usr/bin/env python3
import click
from telegram import InlineKeyboardButton, InlineKeyboardMarkup, KeyboardButton, ReplyKeyboardMarkup
from telegram.ext import Updater, CommandHandler, CallbackQueryHandler, MessageHandler, Filters


def _start(update, context):
    print(f"message> {update.message}")
    update.message.reply_text(text="text", reply_markup=ReplyKeyboardMarkup([[KeyboardButton("send phone",request_contact=True)]]))
#    update.message.reply_text(text="text", reply_markup=ReplyKeyboardMarkup(
#        [*[[KeyboardButton(str(i+1)) for i in range(3*j,3*j+3)] for j in range(3)], [KeyboardButton("send",request_contact=True)]]))
#        #[[InlineKeyboardButton(f"{k}0.5", callback_data=json.dumps([k, name])) for k in "+-"]]))


@click.command()
@click.option("--token", envvar="TOKEN")
def numerical_keyboard(token):
    assert token is not None
    print(f"token: {token}")

    updater = Updater(token, use_context=True)

    updater.dispatcher.add_handler(CommandHandler('start', _start))
    updater.dispatcher.add_handler(MessageHandler(filters=Filters.all,callback=lambda update,_:print(f"message: {update.message}")))
#    updater.dispatcher.add_handler(CommandHandler('help', help_command))

    # Start the Bot
    updater.start_polling()

    # Run the bot until the user presses Ctrl-C or the process receives SIGINT,
    # SIGTERM or SIGABRT
    updater.idle()


if __name__ == "__main__":
    numerical_keyboard()
