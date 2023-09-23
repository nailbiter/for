"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/miscutils/_jira_cli.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2023-09-23T16:46:32.651147
    REVISION: ---

==============================================================================="""
import logging
import subprocess
from jinja2 import Template
import click


def ssj(s: str) -> str:
    "Strip Split Join"
    return " ".join(s.strip().split())


def make_cmd(
    cmd: str,
    ctx_obj: dict,
    kwargs: dict = {},
    args: list = [],
    flags: dict[str, bool] = {},
) -> str:
    cmd = ssj(
        Template(
            """{{jira_exec}} {{cmd}}
            {%for k in args%}'{{k}}' {%endfor%}
        {%for k,v in kwargs|dictsort%}{%if v is not none%}--{{k}} '{{v}}' {%endif%}{%endfor%}
        {%for k,v in flags|dictsort%} {%if v%}--{{k}} {%endif%}{%endfor%}
        """
        ).render(
            {"kwargs": kwargs, "args": args, "flags": flags, **ctx_obj, "cmd": cmd}
        )
    )
    return cmd


def run_cmd(cmd, logger=logging):
    logger.warning(f"> {cmd}")
    ec, out = subprocess.getstatusoutput(cmd)
    assert ec == 0, (cmd, ec, out)
    click.echo(out)
