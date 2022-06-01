#!/usr/bin/env python3
"""===============================================================================

        FILE: handshakes.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2022-04-10T12:05:06.137007
    REVISION: ---

==============================================================================="""

import click
#from dotenv import load_dotenv
import os
from os import path
import logging
import tqdm
import pandas as pd
import random
import itertools
import collections
import json
import click


@click.group()
@click.option("-n", "--people-num", type=int, required=True)
@click.pass_context
def handshakes(ctx, **kwargs):
    ctx.ensure_object(dict)
    ctx.obj["kwargs"] = kwargs


def _get_fn(N):
    return f"res_{N}.json"


@handshakes.command()
@click.pass_context
def format(ctx):
    N = ctx.obj["kwargs"]["people_num"]
    with open(_get_fn(N)) as f:
        argmax = json.load(f)["argmax"]
    maxlen = max(map(len, argmax))
    argmax = [sorted(l)+["--"]*(maxlen-len(l))for l in argmax]
    df = pd.DataFrame(argmax)
    print(df.sort_values(by=0))


@handshakes.command()
@click.option("-p", "--max-parallelism", type=int)
@click.option("-t", "--num-trials", type=int, default=10**4)
@click.option("-s", "--seed", default="")
@click.pass_context
def trial(ctx, max_parallelism, num_trials, seed):
    N = ctx.obj["kwargs"]["people_num"]
    # FIXME
    assert max_parallelism is None

    results = collections.defaultdict(lambda: 0)
    best_res = None
    argmax = None

    for i in tqdm.trange(num_trials):
        random.seed(seed+str(i))
        handshakes = list(itertools.combinations(range(N), 2))
        iterations = 0
        removed_iterations = []
        parallelism = None
        while len(handshakes) > 0:
            iterations += 1
            handshakers = set()
            possible_handshakes = [*handshakes]
            _removed_iterations = []
            while len(possible_handshakes) > 0:
                random_handshake = random.choice(possible_handshakes)
                handshakers.update(random_handshake)
                handshakes.remove(random_handshake)
                possible_handshakes = [
                    handshake
                    for handshake
                    in possible_handshakes
                    if set(handshake) & handshakers == set()
                ]
                _removed_iterations.append(random_handshake)
            _parallelism = len(handshakers)/2
            parallelism = _parallelism if parallelism is None else max(
                parallelism, _parallelism)
            removed_iterations.append(_removed_iterations)
        results[(iterations, parallelism)] += 1
        if best_res is None or best_res > iterations:
            best_res = iterations
            argmax = removed_iterations

    results = sorted(results.items(), key=lambda t: t[0])
    print(results)
    with open(_get_fn(N), "w") as f:
        json.dump({
            "argmax": argmax,
            "best_res": best_res,
            "results": results,
        }, f)


if __name__ == "__main__":
    #    if path.isfile(".env"):
    #        logging.warning("loading .env")
    #        load_dotenv()
    handshakes()
