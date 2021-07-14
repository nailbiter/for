#!/usr/bin/env python3
"""===============================================================================

        FILE: miscutils/top-coder.py

       USAGE: ./miscutils/top-coder.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-07-08T11:40:47.584890
    REVISION: ---

FIXME:
    0. extraction of argument types
    1. parse string arrays
    2. import mechanism

==============================================================================="""
import re
from jinja2 import Template, Environment
from jinja2.loaders import FileSystemLoader
import json
from os import path
import os
import click


@click.group(chain=True)
@click.option("-f", "--filename", type=click.Path(), required=True)
@click.pass_context
def top_coder(ctx, **kwargs):
    ctx.ensure_object(dict)
    ctx.obj["kwargs"] = {**kwargs}
    ctx.obj["jinja_env"] = Environment(loader=FileSystemLoader(
        path.join(path.dirname(__file__), "_top_coder")))


_REGEXS = {
    "LIST_OF_STRINGS": r"^{ *\"(.*)\" *}$",
}


def _parse_line(line):
    if re.match(r"^{\d+(,\d+)*}$", line) is not None:
        # list of nums
        return {
            "type": "LIST_OF_INTS",
            "value": list(map(int, line[1:-1].split(","))),
        }
    elif (re.match(_REGEXS["LIST_OF_STRINGS"], line) is not None) and ("\"" in line):
        value = re.match(_REGEXS["LIST_OF_STRINGS"], line).group(1)
        value = re.split(r"\" *, *\"",value)
        value = list(value)
        return {
            "type": "LIST_OF_STRINGS",
            "value": value,
        }
    elif re.match(r"^\d+$", line) is not None:
        return {
            "type": "INT",
            "value": int(line),
        }
    elif re.match(r"^\".*\"$", line) is not None:
        return {
            "type": "STRING",
            "value": line[1:-1],
        }
    else:
        raise NotImplementedError(line)


def _extract_tests(lines):
    lines = lines[lines.index("EXAMPLES")+1:]
    chunks = []
    for chunk_start, chunk_end in zip([i for i, line in enumerate(lines) if re.match(r"\d+\)", line) is not None], [i for i, line in enumerate(lines) if re.match(r"^Returns: .*$", line) is not None]):
        chunk = lines[chunk_start+1:chunk_end+1]
        test_obj = {"input": []}
        for line in chunk[:-2]:
            test_obj["input"].append(_parse_line(line))
        m = re.match(r"^Returns: (.*)$", chunk[-1])
        assert m is not None
#        click.echo(f"m: {m.group(1)}")
        test_obj["output"] = _parse_line(m.group(1))
        chunks.append(test_obj)
    return chunks


@top_coder.command(name="epd")
@click.option("--start-cut-line", default="// BEGIN CUT HERE")
@click.option("--end-cut-line", default="// END CUT HERE")
@click.pass_context
def extract_problem_description(ctx, start_cut_line, end_cut_line):
    filename = ctx.obj["kwargs"]["filename"]
    base, ext = path.splitext(filename)
    assert ext == ".cpp"
    with open(filename) as f:
        lines = f.readlines()
    lines = list(map(lambda s: s.strip(), lines))
    s, e = [lines.index(s) for s in [start_cut_line, end_cut_line]]
    description = lines[s+1:e]
    code = lines[e+1:]

    method = next(filter(lambda m: m is not None, map(
        lambda line: re.match("^Method:(.*)$", line), description))).group(1)

#    click.echo(_extract_tests(description))
    description_fn = f"{base}.description.txt"
    with open(description_fn, "w") as f:
        f.write("\n".join(description))
    testdata_fn = f"{base}.test.json"
    with open(testdata_fn, "w") as f:
        json.dump({"testdata": _extract_tests(description),
                  "method": method}, f, indent=2, sort_keys=True)
    with open(filename, "w") as f:
        f.write("\n".join(code))
    click.echo(
        f"description written to \"{description_fn}\", tests written to \"{testdata_fn}\"")


def _get_cpp_type(type_):
    if type_ == "LIST_OF_STRINGS":
        return "std::vector<std::string>"
    elif type_ == "INT":
        return "int"
    elif type_ == "STRING":
        return "std::string"
    else:
        raise NotImplementedError(type_)


def _get_cpp_initializer(type_, value):
    if type_ == "LIST_OF_STRINGS":
        return "{"+",".join([f"\"{line}\"" for line in value])+"}"
    elif type_ == "INT":
        return value;
    elif type_ == "STRING":
        return f"\"{value}\""
    else:
        raise NotImplementedError(type_)


def _get_cpp_print_to_stream(tag, value, type_):
    if type_ in ["STRING", "INT"]:
        return f"""std::cout << "{tag}: " << {value} << std::endl;"""
    elif type_ in ["LIST_OF_STRINGS", "LIST_OF_INTS"]:
        return f"""
        std::cout << "{tag}: {{";
        for(int i = 0; i < {value}.size();i++) {{
            std::cout << {value}[i] ;
            if (i+1<{value}.size()) {{
                std::cout << ",";
            }}
        }}
        std::cout << "}}" << std::endl;
        """
    else:
        raise NotImplementedError(type_)


@top_coder.command(name="gt")
@click.pass_context
def generate_tests(ctx):
    filename = ctx.obj["kwargs"]["filename"]
    base, ext = path.splitext(filename)
    with open(f"{base}.test.json") as f:
        testdata = json.load(f)
    testcode = ctx.obj["jinja_env"].get_template("Test.jinja.cpp").render({
        "base": base,
        "testdata": testdata,
        "util": {
            "get_cpp_type": _get_cpp_type,
            "get_cpp_initializer": _get_cpp_initializer,
            "get_cpp_print_to_stream": _get_cpp_print_to_stream,
        }
    })
    with open(f"{base}.test.cpp", "w") as f:
        f.write(testcode)


@top_coder.command(name="ct")
@click.pass_context
def compile_and_test(ctx):
    filename = ctx.obj["kwargs"]["filename"]
    base, ext = path.splitext(filename)
    # keys taken from https://www.topcoder.com/community/data-science/how-to-compete#181
    os.system(
        f"""g++ -std=gnu++11 -O3 -o {base}.exe {base}.test.cpp && ./{base}.exe""")

#    click.echo(base)


if __name__ == "__main__":
    top_coder()
