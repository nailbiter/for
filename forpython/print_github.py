#!/usr/bin/env python3

from requests import get
import json
import re
import sys


#main
m = re.match(r"https://github.com/([a-zA-Z_0-9-]+)/([a-zA-Z_0-9-]+)/issues/([0-9]+)",sys.argv[1])
assert(m is not None)
user,reponame,issue_num = m.group(1),m.group(2),int(m.group(3))
r = get(f"https://api.github.com/repos/{user}/{reponame}/issues/{issue_num}")
data = json.loads(r.text)
print(f"{data['title']}\n\n{data['body']}\n\nurl: {sys.argv[1]}")
