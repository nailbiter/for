import logging

class _AbstractInterpreter(object):
    def dispatch(self, line):
        raise NotImplementedError

class Interpreter(_AbstractInterpreter):
    def __init__(self):
        pass

class StopwatchInterpreter(Interpreter):
    def __init__(self):
        super().__init__()
        self._logger = logging.getLogger("StopwatchInterpreter")
    def dispatch(self, line):
        self._logger.info(f"line: {line}")
        #if line:
        return True
