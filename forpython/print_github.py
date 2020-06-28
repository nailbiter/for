#!/usr/bin/env python3

from requests import get
import json
import re
import sys
from jinja2 import Template


#global const's
MSG_TEMPLATE = """{{title}} ({{done}}/{{total}}={%if total>0%}{{"%05.2f"|format(done/total*100)}}{%else%}100.00%{%endif%}%)

{{body}}

url: {{url}}
"""

#main
m = re.match(r"https://github.com/([a-zA-Z_0-9-]+)/([a-zA-Z_0-9-]+)/issues/([0-9]+)",sys.argv[1])
assert(m is not None)
user,reponame,issue_num = m.group(1),m.group(2),int(m.group(3))
r = get(f"https://api.github.com/repos/{user}/{reponame}/issues/{issue_num}")
data = json.loads(r.text)
body = data["body"]
done,total = 0,0
for line in body.split("\n"):
    if line.startswith("- [ ]"):
        total += 1
    elif line.startswith("- [x]"):
        total += 1
        done += 1
env = {
        **data,
        "done":done,
        "total":total,
        "url":sys.argv[1]
        }
print(Template(MSG_TEMPLATE).render(env))
