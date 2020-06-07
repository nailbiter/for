#!/usr/bin/env python3
import sys
import os
import re


#procedure
def list_java_files():
    #return os.getcwd()
    #directory, basename = path.split(__file__)
    res = []
    for root, dirs, files in os.walk(os.getcwd()):
        #folder = "dags" + root.replace(args.dags, "")
        for fn in files:
            if(os.path.splitext(fn)[1] not in [".java"]):
                continue
            res.append(f"{root}/{fn}")
    return res
def generate_import_map():
    res = dict()
    for fn in list_java_files():
        with open(fn) as f:
            for line in f.readlines():
                m = re.match(r"^import (.*)\.([^.]+);",line)
                if(m):
                    class_name = m.group(2)
                    package_name,class_name = (m.group(i) for i in range(1,3))
                    if(class_name not in res):
                        res[class_name] = set()
                    res[class_name].add(package_name)    
    return res

#main
import_map = generate_import_map()
for line in sys.stdin.readlines():
    cn = line.strip()
    if(cn in import_map):
        for pn in import_map[cn]:
            print(f"import {pn}.{cn};")

#    dagfiles = [os.path.join(args.dags, f)
#                for f in os.listdir(args.dags)
#                if os.path.isfile(os.path.join(args.dags, f)) and f.endswith(".py")]
#    total_count = 0
#    uploaded_count = 0
#    for dagfile in dagfiles:
#        res = upload_wrap(dagfile, "dags")
#        total_count += 1
#        if(res):
#            uploaded_count += 1
