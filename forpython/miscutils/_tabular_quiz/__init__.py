"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/miscutils/_tabular_quiz/__init__.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2023-03-25T14:20:53.939350
    REVISION: ---

==============================================================================="""
import typing
import re
import logging
import pandas as pd


class InteractiveLoop:
    def __init__(
        self, print_cb=print, help_command_name="help", prompt="loop> ", **custom_state
    ):
        self._prompt = prompt
        self._callbacks = []
        self._state = {
            "should_continue": True,
            **custom_state,
        }
        self._logger = logging.getLogger(self.__class__.__name__)
        self._print_cb = print_cb
        self._help_command_name = help_command_name
        self._pre_loop_callback = None

    # FIXME: convert to property with only setter
    def add_pre_loop_callback(self, cb: typing.Callable[[dict], None]):
        self._pre_loop_callback = cb

    def add_callback(
        self,
        trigger_type: typing.Literal["exact", "regex", "fallback"],
        trigger_value: typing.Optional[str],
        callback: typing.Callable[[dict], None],
        help_str: str = None,
    ):
        if trigger_type == "regex":
            trigger_value = re.compile(trigger_value)
        self._callbacks.append((trigger_type, trigger_value, callback, help_str))

    def _get_help_str(self, *to_string_args, **to_string_kwargs):
        callbacks_df = self._get_help_callbacks_df()
        callbacks_df = callbacks_df[["type", "value", "help_str"]]
        callbacks_df.rename(columns={"help_str": "help"}, inplace=True)
        callbacks_df["help"].fillna("", inplace=True)
        callbacks_df = pd.DataFrame(
            [
                *callbacks_df.to_dict(orient="records"),
                {"type": "help", "value": "help", "help": "help"},
            ]
        )
        return callbacks_df.to_string(*to_string_args, **to_string_kwargs)

    def _get_help_callbacks_df(self):
        callbacks_df = pd.DataFrame(
            self._callbacks, columns=["type", "value", "callback", "help_str"]
        )
        return callbacks_df.copy()

    def loop(self):
        callbacks_df = self._get_help_callbacks_df()
        while self._state["should_continue"]:
            if self._pre_loop_callback is not None:
                self._pre_loop_callback(dict(state=self._state))

            s = input(self._prompt)
            s = s.strip()

            is_accept = False
            callback = None
            m = None
            if s == self._help_command_name:
                self._print_cb(self._get_help_str())
                continue

            for trigger_type, trigger_value, callback_ in callbacks_df[
                ["type", "value", "callback"]
            ].values:
                if trigger_type == "exact":
                    if s == trigger_value:
                        self._logger.warning(f"match {(trigger_type, trigger_value)}")
                        is_accept, callback = True, callback_
                elif trigger_type == "regex":
                    m = trigger_value.match(s)
                    if m is not None:
                        self._logger.warning(f"match {(trigger_type, trigger_value)}")
                        is_accept, callback = True, callback_
                if is_accept:
                    break

            if not is_accept:
                fallbacks = callbacks_df.loc[
                    callbacks_df["type"] == "fallback", "callback"
                ].to_list()
                if len(fallbacks) == 0:
                    self._logger.error(
                        f'unknown input "{s}" and no fallbacks registered'
                    )
                else:
                    callback = fallbacks[-1]

            callback(dict(m=m, state=self._state))
