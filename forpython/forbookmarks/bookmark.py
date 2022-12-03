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
import subprocess
import functools

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
    ec, out = subprocess.getstatusoutput(cmd)
    assert ec == 0, (ec, cmd, out)


def _s(s):
    return s.split(" ")


def _assert_and_log(predicate, msg, logger=None):
    assert logger is not None
    if not predicate:
        logger.error(msg)
        assert predicate, msg


@_add_logger
def _get_line(text, day, mongo_client, which_line, dictionary, override=None, suffix="", ignore_cache=False, logger=None):
    search_key = {"day": day, "suffix": suffix, "which_line": which_line}
    r = mongo_client.bookmarks.lines.find_one(search_key)
    assert_and_log = functools.partial(_assert_and_log, logger=logger)
    if r is None or ignore_cache or override is not None:
        # Gal., 213 zach., V, 22 – VI, 2.
        regex = f"(?P<key>{'|'.join(dictionary.keys())})" + \
            r"""\.,\s*(?P<zach>\d+)\s*zach\.( \(ot polú\))?, (?P<chapter_roman_start>[XVI]+), (?P<chapter_start>\d+)\s*–\s*((?P<chapter_roman_end>[XVI]+)[,;]\s+)?(?P<chapter_end>\d+)"""
        for i in range(_CHAPTER_MAX_COUNT):
            i += 1
            regex += f"""(([,;] (?P<chapter_roman_start_{i}>[XVI]+))?, (?P<chapter_start_{i}>\\d+)\\s*–\\s*((?P<chapter_roman_end_{i}>[XVI]+)[,;]\s+)?(?P<chapter_end_{i}>\\d+))?"""
        regex += """\."""
        pat = re.compile(regex)
        _text = override if override is not None else text
        m = pat.search(_text)
        assert_and_log(m is not None, (which_line,
                       _text, regex), logger=logger)
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

        mongo_client.bookmarks.lines.delete_many(search_key)
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
@click.option("-d", "--day", type=click.DateTime(["%Y-%m-%d"]), default=datetime.now()+timedelta(days=2), envvar="BOOKMARK_DATE")
@click.option("--cache-folder", type=click.Path(), default=path.join(path.split(__file__)[0], ".cache"))
@click.option("--cpdf-executable", default="cpdf")
@click.option("--pdfs-folder", type=click.Path(), default=path.join(path.split(__file__)[0], "pdfs"))
@click.option("-t", "--pdf-template", type=click.Path(), default=path.join(path.split(__file__)[0], "pdfs", "test.pdf"))
@click.option("-s","--suffix", default="")
@click.option("--mongo-url", envvar="MONGO_URL")
@click.pass_context
def bookmark(ctx, mongo_url, **kwargs):
    basic_config_kwargs = {"handlers": [logging.StreamHandler(), ], }
    if True:
        basic_config_kwargs["level"] = logging.INFO
    if True:
        now = datetime.now()
        log_file = f".logs/{kwargs['day'].strftime('%Y%m%d')}_{now.isoformat()}.log.txt"
        _handler = logging.FileHandler(log_file)
        _handler.setLevel(logging.INFO)
        basic_config_kwargs["handlers"].append(_handler)
    logging.basicConfig(**basic_config_kwargs)

    day, cache_folder = [kwargs[k] for k in _ss("day cache_folder")]
    assert day.weekday() == 6, f"{day} is not Sunday"
    kwargs["day"] = day.strftime('%Y-%m-%d')
    os.makedirs(cache_folder, exist_ok=True)

    ctx.ensure_object(dict)
    for k, v in kwargs.items():
        ctx.obj[k] = v
    ctx.obj["mongo_client"] = MongoClient(mongo_url)


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
        _REGEX = r"(?P<ag>acts|gospel) (?P<langs>(chi|eng|rus)(,(chi|eng|rus))*) (?P<xy>x|y) (?P<offset>[+-]?\d+)"
        if s == "help":
            click.echo(_REGEX)
        elif s == "exit":
            should_continue = False
        else:
            m = re.match(_REGEX, s)
            if m is not None:
                print(coll.find_one({"day": day, "suffix": suffix}))

                ag, langs, xy, offset = [
                    m.group(k)
                    for k
                    in "ag langs xy offset".split()
                ]
                langs = sorted(set(langs.split(",")))
                xy = (0 if 'x' == xy else 1)
                offset = int(offset)

                for lang in langs:
                    coll.update_one(
                        {
                            "day": day,
                            "suffix": suffix,
                        },
                        {
                            "$inc": {
                                f"coords.0.{ag}.{lang}.{xy}": offset,
                            }
                        },
                    )
                print(coll.find_one({"day": day, "suffix": suffix}))
                _system(f"python3 bookmark.py -d {day} make")
            else:
                print("m is None")

    click.echo("bye")


@bookmark.command()
@click.option("-i", "--ignore-cache", type=click.IntRange(0, 3), default=0, help="higher value means ignore more")
@click.option("-g", "--gospel")
@click.option("-a", "--acts")
@click.pass_context
@_add_logger
def make(ctx, ignore_cache, logger=None, **kwargs):
    day, cache_folder, cpdf_executable, pdfs_folder, pdf_template, suffix, client = [
        ctx.obj[k]
        for k
        in _ss("day cache_folder cpdf_executable pdfs_folder pdf_template suffix mongo_client")
    ]
    kwargs = {**kwargs, **{k: translit(v, "ru", reversed=True)
                           for k, v in kwargs.items() if v is not None}}
    click.echo(kwargs)
    dictionary_file = path.join(path.split(__file__)[0], "dictionary.json")
    jinja_env = Environment(loader=FileSystemLoader(
        path.join(path.split(__file__)[0], "templates"), followlinks=True))

    r = client.bookmarks.downloads.find_one({"date": day})
    if r is None or ignore_cache >= 3:
        fn = path.join(cache_folder, f"{uuid.uuid4()}.html")
        url = f"http://www.patriarchia.ru/bu/{day}/"
        _system(f"""links -dump {url} > {fn}""")
        r = {"date": day, "fn": fn}
        client.bookmarks.downloads.delete_many({"date": day})
        client.bookmarks.downloads.insert_one(r)
    with open(r["fn"]) as f:
        text = f.read()
    text = translit(text, "ru", reversed=True)
    logger.info(f"text: {text}")

    with open(dictionary_file) as f:
        dictionary = json.load(f)
    dictionary = {k: {kk: {kkk: vvv for kkk, vvv in zip(
        _s("rus eng chi"), vv)}for kk, vv in v.items()}for k, v in dictionary.items()}
    try:
        lines = {k: _get_line(text, day=day, mongo_client=client,
                              dictionary=v, which_line=k, ignore_cache=ignore_cache >= 2, override=kwargs[k]) for k, v in dictionary.items()}
    except Exception:
        logging.error(r["fn"])
        raise
    logger.info(f"lines: {lines}")

    pdf_snippets = {}
    for key, i in itertools.product(lines, _s("rus eng chi")):
        search_key = {"key": key, "language": i, "day": day}
        r = client.bookmarks.snippet_pdfs.find_one(search_key)
        if r is None or ignore_cache >= 1:
            line = lines[key]
            tpl_name = f"snippet_{'eng' if i=='chi' else i}.jinja.txt"
            tpl = jinja_env.get_template(tpl_name)
            logger.info(f"{i} => {dictionary[key][line['key']][i]}")
            render_data = {
                "translation": dictionary[key][line["key"]][i],
                "roman_to_int": roman_to_int,
                "line": line,
                "CHAPTER_MAX_COUNT": _CHAPTER_MAX_COUNT,
            }
            translation = tpl.render(render_data)
            logger.info(
                f"render {tpl_name} with\n{render_data}\nto get\n{translation}")

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
