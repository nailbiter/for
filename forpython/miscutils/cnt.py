#!/usr/bin/env python3
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/miscutils/cnt.py

       USAGE: .//Users/nailbiter/for/forpython/miscutils/cnt.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2023-05-11T21:10:09.417099
    REVISION: ---

==============================================================================="""

from dotenv import load_dotenv
import logging
import os
import sqlite3
import uuid
from datetime import datetime, timedelta
from os import path
import click
import pandas as pd
from sqlalchemy import (
    Column,
    DateTime,
    ForeignKey,
    Integer,
    String,
    create_engine,
    func,
)
from sqlalchemy.orm import declarative_base, sessionmaker
from sqlalchemy.orm.exc import NoResultFound
import functools

Base = declarative_base()
option_with_envvar_explicit = functools.partial(click.option, show_envvar=True)


class Cnt(Base):
    __tablename__ = "cnt"

    uuid = Column(String, primary_key=True)
    creation_date = Column(DateTime)
    idx = Column(Integer)
    cnt_name = Column(String)

    def __init__(self, idx, cnt_name):
        self.uuid = str(uuid.uuid4())
        self.creation_date = datetime.now()
        self.idx = idx
        self.cnt_name = cnt_name

    def to_dict(self):
        return {
            k: getattr(self, k)
            for k in [
                "uuid",
                "creation_date",
                "idx",
                "cnt_name",
            ]
        }

    def __str__(self):
        return str(self.to_dict())


@click.group()
@option_with_envvar_explicit(
    "--database-fn",
    type=click.Path(),
    default=path.join(path.split(__file__)[0], ".cnt.db"),
)
@click.pass_context
def cnt(ctx, database_fn):
    engine = create_engine(f"sqlite:///{path.abspath(database_fn)}", echo=False)
    _sessionmaker = sessionmaker(bind=engine)
    Base.metadata.create_all(engine)
    session = _sessionmaker()

    ctx.ensure_object(dict)
    ctx.obj["session"] = session


def _get_cnt_df(session):
    df = pd.DataFrame(
        session.query(
            func.max(Cnt.idx),
            Cnt.cnt_name,
            func.min(Cnt.creation_date),
            func.max(Cnt.creation_date),
        )
        .group_by(Cnt.cnt_name)
        .all(),
        columns=["cnt", "name", "created", "last_used"],
    )
    df.set_index("name", inplace=True)
    df.sort_index(inplace=True)
    return df


@cnt.command()
@click.pass_context
def ls(ctx):
    session = ctx.obj["session"]
    df = _get_cnt_df(session)
    click.echo(df)


@cnt.command()
@option_with_envvar_explicit("-n", "--name", required=True)
@option_with_envvar_explicit("-i", "--init-count", type=int, default=1)
@option_with_envvar_explicit("-c", "--increment", type=click.IntRange(min=1), default=1)
@click.pass_context
def inc(ctx, name, init_count, increment):
    session = ctx.obj["session"]
    df = _get_cnt_df(session)
    if name in df.index:
        cnt_ = Cnt(idx=int(df.loc[name, "cnt"]) + increment, cnt_name=name)
    else:
        cnt_ = Cnt(idx=init_count, cnt_name=name)
    logging.warning(f"insert {cnt_}")
    session.add(cnt_)
    session.commit()
    click.echo(cnt_.idx)


if __name__ == "__main__":
    if path.isfile(".env"):
        logging.warning("loading .env")
        load_dotenv()
    cnt(auto_envvar_prefix="CNT", show_default=True)
