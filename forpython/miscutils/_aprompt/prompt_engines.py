"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/miscutils/_aprompt/prompt_engines.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2025-02-08T22:05:29.672016
    REVISION: ---

==============================================================================="""
from abc import ABC, abstractmethod
import logging
import typing


class PromptEngine(ABC):
    @abstractmethod
    def prompt(self, prompt: str, **kwargs) -> str:
        pass

    def _log(self, *args, method: str = "warning", **kwargs):
        if self._logger is not None:
            getattr(self._logger, method)(*args, **kwargs)


class _GeminiPromptEngine(PromptEngine):
    def __init__(
        self,
        engine_access_token: str,
        is_loud: bool,
        model: str = "gemini-1.5-flash",
    ):
        import google.generativeai as genai

        self._engine_access_token = engine_access_token
        genai.configure(api_key=engine_access_token)
        self._genai = genai
        self._model = genai.GenerativeModel(model)
        self._logger = logging.getLogger(self.__class__.__name__) if is_loud else None

    def prompt(self, prompt: str, **kwargs) -> str:
        model = self._model
        response = model.generate_content(prompt)
        self._log(response)
        return response.text


AVAILABLE_PROMPT_ENGINES = {"gemini": _GeminiPromptEngine, "chatgpt": None}


def get_prompt_engine(
    prompt_engine: str, engine_access_token: str, is_loud: bool, **kwargs
) -> PromptEngine:
    assert prompt_engine in AVAILABLE_PROMPT_ENGINES, (
        prompt_engine,
        AVAILABLE_PROMPT_ENGINES,
    )
    return AVAILABLE_PROMPT_ENGINES[prompt_engine](
        engine_access_token, is_loud, **kwargs
    )
