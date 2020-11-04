#!/usr/bin/env python3
"""===============================================================================

        FILE: {{filename}}

       USAGE: {%if is_executable%}./{{filename}}{%else%}(not intended to be directly executed){%endif%}

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev ({{email}})
ORGANIZATION: {{organization}}
     VERSION: ---{#0.0.1#}
     CREATED: {{now.isoformat()}}
    REVISION: ---

==============================================================================="""
{%-set basename = os.path.splitext(os.path.split(filename)[-1])[0]%}

import click

@click.command()
def {{basename}}():
    pass

if __name__=="__main__":
    {{basename}}()
