#!/usr/bin/env python3
from argparse import ArgumentParser
from jinja2 import Template
from os import path, system
import re
import click


# global const's
# global var's
# procedures
@click.command()
@click.argument("filename",type=click.Path(dir_okay=False,writable=True))
@click.option("-m","--maven",is_flag=True)
@click.option("-d","--dry_run",is_flag=True)
@click.option("-i","--interface",is_flag=True)
@click.option("-g","--github",is_flag=True)
@click.option("-e","--extends",type=click.Path(exists=True,dir_okay=False,readable=True))
def create_new_class(filename,maven,dry_run,interface,github,extends):
    directory, basename = path.split(__file__)
    fn_directory, fn_basename = path.split(filename)
    if maven:
        m = re.match(r"src/main/java/(.*)", fn_directory)
        assert(m)
        fn_directory = m.group(1)
    class_name, _ = path.splitext(fn_basename)
    with open(f"{directory}/templates/new_class.jinja.java") as template_file:
        template = Template(template_file.read())
    env = {
        "package_name": fn_directory.replace("/", "."),
        "class_name": class_name,
        "is_interface": interface
    }
    if extends:
        env["extends"] = path.splitext(path.split(extends)[1])[0]
    res = template.render(env)
    if dry_run:
        print(res)
    else:
        with open(filename, "w") as f:
            f.write(res)
            if(github):
                system(f"git add {filename}")

# main
create_new_class()
