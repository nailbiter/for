import logging
from collections import namedtuple
import json
from shlex import split

class _Interpreter():
    def __init__(self, prompt):
        self._logger = logging.getLogger(f"_Interpreter({prompt})")
        self._prompt = prompt
        self._commands = []

    def dispatch(self, line):
        self._logger.info(f"line: {line}")
        for c in self._commands:
            self._logger.info(f"trying {c.name}")
            if c.is_match(line):
                self._logger.info(f"matched {c.name}")
                return c.eval(line)
            else:
                self._logger.info(f"not matched {c.name}")
        return True

    @property
    def prompt(self):
        return self._prompt

    def command(self,name):
        def _res(f):
            self._logger.info("in command")
            if not _Command.Is_Command(f):
                self._logger.info("in branch")
                f = _Command(f)
            f.name = name
            self._commands.append(f)
        return _res
    @property
    def command_names(self):
        res = [c.name for c in self._commands]
        return res

_Argument = namedtuple("_Argument","name")

class _Command():
    _TAG = "interpreter_707a5dfb7d2315cbc932b36e"
    @classmethod
    def Is_Command(cls,f):
        return getattr(f,cls._TAG,False)
    def __init__(self,f):
        self._f = f
        setattr(self,self.__class__._TAG,True)
        self._args = []
        self._logger = logging.getLogger(f"_Command")
    @property
    def name(self):
        return self._name
    @name.setter
    def name(self,name):
        self._name = name
    def add_argument(self,arg):
        self._logger.info(f"adding {arg}")
        self._args.insert(0,arg)
    def is_match(self,line):
        spl = split(line,posix=True)
        self._logger.info(f"spl: {spl}")
        return spl and spl[0]==self.name and len(spl)==(len(self._args)+1)
    def eval(self,line):
        """
        :return: should_continue
        """
        spl = split(line,posix=True)
        _args = {a.name:v for a,v in zip(self._args,spl[1:]) }
        res = self._f(**_args)
        return True if res is None else res
    def __str__(self):
        return json.dumps([{"name":a.name} for a in self._args],sort_keys=True)

def interpreter(prompt):
    def _res(_):
        return _Interpreter(prompt)
    return _res

def argument(name):
    logger = logging.getLogger("argument")
    logger.info(f"argument was called with {name}")
    def _res(f):
        if not _Command.Is_Command(f):
            f = _Command(f)
        f.add_argument(_Argument(name=name))
        return f
    return _res
