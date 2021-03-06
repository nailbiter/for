#!/usr/bin/env python3
"""===============================================================================

        FILE: make.py

       USAGE: ./make.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-01-30T18:15:33.643038
    REVISION: ---

==============================================================================="""

import click
import os
from os import path
from datetime import datetime, timedelta
import readline
import logging
import uuid
from pymongo import MongoClient
from transliterate import translit
from _bookmark import roman_to_int
import re
import json
import itertools
from jinja2 import Template, FileSystemLoader, Environment
from _bookmark import 

_CHAPTER_MAX_COUNT = 3


def _add_logger(f):
    logger = logging.getLogger(f.__name__)

    def _f(*args, **kwargs):
        return f(*args, logger=logger, **kwargs)
    _f.__name__ = f.__name__
    return _f


@_add_logger
def _system(cmd, logger=None):
    logger.info(f"> {cmd}")
    os.system(cmd)


def _s(s):
    return s.split(" ")


@_add_logger
def _get_line(text, day, mongo_client, which_line, dictionary, suffix="", logger=None):
    search_key = {"day": day, "suffix": suffix, "which_line": which_line}
    r = mongo_client.bookmarks.lines.find_one(search_key)
    if r is None:
        # Gal., 213 zach., V, 22 – VI, 2.
        regex = f"(?P<key>{'|'.join(dictionary.keys())})" + \
            r"""\., (?P<zach>\d+) zach\., (?P<chapter_roman_start>[XVI]+), (?P<chapter_start>\d+)\s*–\s*((?P<chapter_roman_end>[XVI]+), )?(?P<chapter_end>\d+)"""
        for i in range(_CHAPTER_MAX_COUNT):
            i += 1
            regex += f"""((, (?P<chapter_roman_start_{i}>[XVI]+))?, (?P<chapter_start_{i}>\\d+)\\s*–\\s*((?P<chapter_roman_end_{i}>[XVI]+), )?(?P<chapter_end_{i}>\\d+))?"""
        regex += """\."""
        pat = re.compile(regex)
        m = pat.search(text)
        assert m is not None, (which_line, regex)
        r = {
            k: m.group(k)
            for k
            in [
                *["key", "zach"],
                *[
                    (p if i == 0 else f"{p}_{i}")
                    for p, i
                    in itertools.product(
                        "chapter_roman_start chapter_start chapter_roman_end chapter_end".split(
                            " "),
                        range(_CHAPTER_MAX_COUNT+1)
                    )
                ]
            ]
            if m.group(k) is not None
        }

        r = {
            **{"chapter_roman_end": r["chapter_roman_start"]},
            **r,
        }
        mongo_client.bookmarks.lines.insert_one({**r, **search_key})
    return r




def _get_coords_inner_loop(day, mongo_client, coords_dir, suffix=""):
    search_line = {"day": day, "suffix": suffix}
    r = mongo_client.bookmarks.coords.find_one(search_line)
    if r is None:
        with open(path.join(coords_dir, "default_coords.json")) as f:
            coords = json.load(f)
        r = {"coords": coords}
        mongo_client.bookmarks.coords.insert_one({**search_line, **r})
    return r["coords"]


def _ss(s):
    return s.split(" ")


@click.group()
@click.option("-d", "--day", type=click.DateTime(["%Y-%m-%d"]), default=datetime.now()+timedelta(days=2))
@click.option("--cache-folder", type=click.Path(), default=path.join(path.split(__file__)[0], ".cache"))
@click.option("--cpdf-executable", default="cpdf")
@click.option("--pdfs-folder", type=click.Path(), default=path.join(path.split(__file__)[0], "pdfs"))
@click.option("--pdf-template", type=click.Path(), default=path.join(path.split(__file__)[0], "pdfs", "test.pdf"))
@click.option("--suffix", default="")
@click.pass_context
def bookmark(ctx, **kwargs):
    if True:
        logging.basicConfig(level=logging.INFO)

    day, cache_folder = [kwargs[k] for k in _ss("day cache_folder")]
    assert day.weekday() == 6, f"{day} is not Sunday"
    kwargs["day"] = day.strftime('%Y-%m-%d')
    os.makedirs(cache_folder, exist_ok=True)

    ctx.ensure_object(dict)
    for k, v in kwargs.items():
        ctx.obj[k] = v
    ctx.obj["mongo_client"] = MongoClient()


@_add_logger
def _system(cmd, logger=None):
    logger.info(f"> {cmd}")
    os.system(cmd)


@bookmark.command()
@click.pass_context
@_add_logger
def edit_loop(ctx, logger=None):
    day, cache_folder, cpdf_executable, pdfs_folder, pdf_template, suffix, client = [
        ctx.obj[k]
        for k
        in _ss("day cache_folder cpdf_executable pdfs_folder pdf_template suffix mongo_client")
    ]
    coll = client.bookmarks.coords
    should_continue = True
    while should_continue:
        s = input("edit_loop> ")
        s = s.strip()
        click.echo(s)
        _REGEX = r"(acts|gospel) (chi|eng|rus) (x|y) (-?\d+)"
        if s == "help":
            click.echo(_REGEX)
        else:
            m = re.match(_REGEX, s)
            assert m is not None

            print(coll.find_one({"day": day, "suffix": suffix}))
            coll.update_one({"day": day, "suffix": suffix}, {
                            "$inc": {f"coords.0.{m.group(1)}.{m.group(2)}.{0 if 'x'==m.group(3) else 1}": int(m.group(4))}})
            print(coll.find_one({"day": day, "suffix": suffix}))
            _system(f"python3 bookmark.py -d {day} make")

        if s == "exit":
            should_continue = False
    click.echo("bye")


@bookmark.command()
@click.option("--ignore-pdf-cache/--no-ignore-pdf-cache",default=False)
@click.pass_context
@_add_logger
def make(ctx, ignore_pdf_cache,logger=None):
    day, cache_folder, cpdf_executable, pdfs_folder, pdf_template, suffix, client = [
        ctx.obj[k]
        for k
        in _ss("day cache_folder cpdf_executable pdfs_folder pdf_template suffix mongo_client")
    ]
    dictionary_file = path.join(path.split(__file__)[0], "dictionary.json")
    jinja_env = Environment(loader=FileSystemLoader(
        path.join(path.split(__file__)[0], "templates"), followlinks=True))

    r = client.bookmarks.downloads.find_one({"date": day})
    if r is None:
        fn = path.join(cache_folder, f"{uuid.uuid4()}.html")
        url = f"http://www.patriarchia.ru/bu/{day}/"
        _system(f"""links -dump {url} > {fn}""")
        r = {"date": day, "fn": fn}
        client.bookmarks.downloads.insert_one(r)
    with open(r["fn"]) as f:
        text = f.read()
    text = translit(text, "ru", reversed=True)
    logger.info(f"text: {text}")

    with open(dictionary_file) as f:
        dictionary = json.load(f)
    dictionary = {k: {kk: {kkk: vvv for kkk, vvv in zip(
        _s("rus eng chi"), vv)}for kk, vv in v.items()}for k, v in dictionary.items()}
    lines = {k: _get_line(text, day=day, mongo_client=client,
                          dictionary=v, which_line=k) for k, v in dictionary.items()}
    logger.info(f"lines: {lines}")

    pdf_snippets = {}
    for key, i in itertools.product(lines, _s("rus eng chi")):
        search_key = {"key": key, "language": i, "day": day}
        r = client.bookmarks.snippet_pdfs.find_one(search_key)
        if r is None or ignore_pdf_cache:
            line = lines[key]
            tpl_name = f"snippet_{'eng' if i=='chi' else i}.jinja.txt"
            tpl = jinja_env.get_template(tpl_name)
            logger.info(f"{i} => {dictionary[key][line['key']][i]}")
            render_data = {
                "translation": dictionary[key][line["key"]][i],
                "roman_to_int": roman_to_int,
                "line":line,
                "CHAPTER_MAX_COUNT":_CHAPTER_MAX_COUNT,
            }
            translation = tpl.render(render_data)
            logger.info(f"render {tpl_name} with\n{render_data}\nto get\n{translation}")

            uuid_ = uuid.uuid4()
            tex_fn = path.join(cache_folder, f"{uuid_}.tex")
            pdf_fn = path.join(cache_folder, f"{uuid_}.pdf")
            with open(tex_fn, "w") as f:
                f.write(jinja_env.get_template(
                    "bookmark.jinja.tex").render({"text": translation}))
            _system(f"xelatex -output-directory {cache_folder} {tex_fn}")
            _system(
                f"{cpdf_executable} -rotate-contents -90 {pdf_fn} -o {pdf_fn}")

            r = {"fn": pdf_fn}
            client.bookmarks.snippet_pdfs.delete_many(search_key)
            client.bookmarks.snippet_pdfs.insert_one({**search_key, **r})
        pdf_snippets[(key, i)] = r["fn"]

    outname = path.join(pdfs_folder, f"bookmark_{day}{suffix}.pdf")
    _system(f"rm -rf {outname}")
    _system(f"cp {pdf_template} {outname}")
    coords_dir = path.join(path.split(__file__)[0], "coords")
    with open(path.join(coords_dir, "test.json")) as f:
        coords_outer_loop = json.load(f)
    for x, y, height, width in coords_outer_loop:
        _system(f"""{cpdf_executable} -prerotate -add-rectangle "{height} {width}" -pos-left "{x} {y}" -color white "{outname}" -o "{outname}" """)

    coords_inner_loop = _get_coords_inner_loop(
        day, mongo_client=client, coords_dir=coords_dir)
    for displacement_x, displacement_y in coords_inner_loop[2]:
        for k, displacements in coords_inner_loop[1].items():
            for _displacement_x, _displacement_y in displacements:
                _displacement_x += displacement_x
                _displacement_y += displacement_y
                for i in _s("rus eng chi"):
                    x, y = _displacement_y + \
                        coords_inner_loop[0][k][i][1], _displacement_x + \
                        coords_inner_loop[0][k][i][0]
                    _system(
                        f"""{cpdf_executable} -prerotate -stamp-on {pdf_snippets[k,i]} -pos-left "{x} {y}" "{outname}" -o "{outname}" """)


def _get_fn(coll, cache_folder, extension, fn_key="fn", **search_kwargs):
    assert extension[0] == "."
    r = coll.find_one(search_kwargs)
    if r is None or not path.isfile(r[fn_key]):
        fn = path.join(cache_folder, f"{uuid.uuid4()}{extension}")
        r = {fn_key: fn}
        coll.update_one(
            search_kwargs, {**search_kwargs, fn_key: fn}, upsert=True)
        return r[fn_key], True
    else:
        return r[fn_key], False


if __name__ == "__main__":
    bookmark()
