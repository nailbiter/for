#!/usr/bin/env python3
import readline
import logging
from _stopwatch.simple_completer import SimpleCompleter
from _stopwatch.interpreter import interpreter, argument
logging.basicConfig(level=logging.DEBUG,handlers=[logging.FileHandler('.completer.log.txt'),])

# global const's
# global var's
# procedures


def input_loop(stopwatch_interpreter):
    line = ''
    should_continue = True
    while should_continue:
        line = input(stopwatch_interpreter.prompt).strip()
        should_continue = stopwatch_interpreter.dispatch(line)


@interpreter('("stop" to quit)> ')
def cli():
    pass

@cli.command("stop")
@argument("name")
def stop(name):
    #TODO
    print(f"stopping {name}")

@cli.command("start")
@argument("name")
def start(name):
    pass

@cli.command("list")
def list():
    #TODO
    pass

@cli.command("remove")
@argument("name")
def remove(name):
    #TODO
    pass

@cli.command("reset")
@argument("name")
def reset(name):
    #TODO
    pass
#, help

# main
# Register our completer function
readline.set_completer(SimpleCompleter(cli.command_names).complete)

# Use the tab key for completion
readline.parse_and_bind('tab: complete')

# Prompt the user for text
input_loop(cli)
