#!/usr/bin/env python3
import click
from telegram import InlineKeyboardButton, InlineKeyboardMarkup, KeyboardButton, ReplyKeyboardMarkup
from telegram.ext import Updater, CommandHandler, CallbackQueryHandler, MessageHandler, Filters
import json


bot = None

def _update_json_obj(fn,patch={}):
    content = {}
    with open(fn) as f:
        s = f.read()
        if len(s)>0:
            content = json.loads(s)
    with open(fn,"w") as f:
        content = {**content,**patch}
        print(f"new content: {content}")
        json.dump(content,f)
    return content    


def _start(update, context):
    print(f"message> {update.message}")
    update.message.reply_text(text="text", reply_markup=ReplyKeyboardMarkup(
        [[KeyboardButton("send phone", request_contact=True)]]))


def _numerical_keyboard(update, context):
    m = update.message.reply_text(text="enter phone number", reply_markup=ReplyKeyboardMarkup(
        [*[[KeyboardButton(str(i+1)) for i in range(3*j, 3*j+3)] for j in range(3)], [KeyboardButton("send")]]))
    m = update.message.reply_text(text="phone num")
    _update_json_obj(".cache.json",{"keyboard_message":{"message_id":m.message_id,"chat_id":m.chat.id}, "phone_number":""})


def _help(update, context):
    m = update.message.reply_text(text="\n".join([f"{cmd} - {cmd}" for cmd in ["numerical_keyboard","start", "help"]]))


def _message_handler(update, context):
    if update.message.text in list("0123456789"):
        update.message.delete()
        keyboard_message = None
        phone_number = None
        with open(".cache.json") as f:
            _o = json.load(f)
            keyboard_message = _o["keyboard_message"]
            phone_number = _o["phone_number"]
        phone_number += update.message.text    
        _update_json_obj(".cache.json",{"phone_number":phone_number})
        bot.edit_message_text(message_id=keyboard_message["message_id"],chat_id=keyboard_message["chat_id"],text=phone_number)


@click.command()
@click.option("--token", envvar="TOKEN")
def numerical_keyboard(token):
    assert token is not None
    print(f"token: {token}")

    updater = Updater(token, use_context=True)
    global bot
    if updater.bot is None:
        print("bot is None!!")
    bot = updater.bot

    updater.dispatcher.add_handler(CommandHandler('start', _start))
    updater.dispatcher.add_handler(CommandHandler(
        'numerical_keyboard', _numerical_keyboard))
    updater.dispatcher.add_handler(CommandHandler('help', _help))
    updater.dispatcher.add_handler(MessageHandler(
        filters=Filters.all, callback=_message_handler))

    # Start the Bot
    updater.start_polling()

    # Run the bot until the user presses Ctrl-C or the process receives SIGINT,
    # SIGTERM or SIGABRT
    updater.idle()


if __name__ == "__main__":
    numerical_keyboard()
