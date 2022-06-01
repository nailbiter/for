import inspect
import types
from typing import cast
import logging

#taken from https://stackoverflow.com/a/13514318
this_function_name = cast(types.FrameType, inspect.currentframe()).f_code.co_name
logger = logging.getLogger(__name__).getChild(this_function_name)
