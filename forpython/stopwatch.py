#!/usr/bin/env python3
import readline
import logging
from _stopwatch.simple_completer import SimpleCompleter
from _stopwatch.stopwatch_interpreter import StopwatchInterpreter

LOG_FILENAME = '/tmp/completer.log'
logging.basicConfig(level=logging.DEBUG,
#                    filename=LOG_FILENAME,
                    )


def input_loop(stopwatch_interpreter):
    line = ''
    should_continue = True
    while should_continue:
        line = input('("stop" to quit)> ').strip()
        should_continue = stopwatch_interpreter.dispatch(line)


stopwatch_interpreter = StopwatchInterpreter()
# Register our completer function
readline.set_completer(SimpleCompleter(
    ["start", "stop", "list", "remove", "reset", "help"]).complete)

# Use the tab key for completion
readline.parse_and_bind('tab: complete')

# Prompt the user for text
input_loop(stopwatch_interpreter)
