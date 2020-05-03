#!/usr/bin/env python3
from argparse import ArgumentParser
from jinja2 import Template
from os import path, system
import re


# global const's
# global var's
# procedures

# main
parser = ArgumentParser(description="Process some integers.")
parser.add_argument("filename")
parser.add_argument("--dry_run", "-d", action="store_true")
parser.add_argument("--maven", "-m", action="store_true")
parser.add_argument("--interface", "-i", action="store_true")
parser.add_argument("--github", "-g", action="store_true")
parser.add_argument("--extends", "-e")

args = parser.parse_args()

directory, basename = path.split(__file__)
fn_directory, fn_basename = path.split(args.filename)
if(args.maven):
    m = re.match(r"src/main/java/(.*)", fn_directory)
    assert(m)
    fn_directory = m.group(1)
class_name, _ = path.splitext(fn_basename)
with open(f"{directory}/templates/new_class.jinja.java") as template_file:
    template = Template(template_file.read())
env = {
    "package_name": fn_directory.replace("/", "."),
    "class_name": class_name,
    "is_interface": args.interface
}
if args.extends:
    env["extends"] = path.splitext(path.split(args.extends)[1])[0]
res = template.render(env)
if args.dry_run:
    print(res)
else:
    with open(args.filename, "w") as f:
        f.write(res)
        if(args.github):
            system(f"git add {args.filename}")
