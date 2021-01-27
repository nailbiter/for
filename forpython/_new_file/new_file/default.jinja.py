{%-if is_executable-%}
#!/usr/bin/env python3
{%endif-%}
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
{%block content%}{%endblock%}
