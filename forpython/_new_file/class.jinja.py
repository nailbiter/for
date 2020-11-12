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

class {{converters.snake_to_camel(basename)}}:
    pass
