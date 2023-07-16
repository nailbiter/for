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
import operator

Base = declarative_base()
click_option_with_envvar_explicit = functools.partial(click.option, show_envvar=True)

_COUNTER_TYPES = dict(int="INT", uuid="UUID")


class Cnt(Base):
    __tablename__ = "cnt"

    uuid = Column(String, primary_key=True)
    creation_date = Column(DateTime)
    idx = Column(String)
    cnt_name = Column(String)
    comment = Column(String)
    counter_type = Column(String)
    version = Column(String)

    def __init__(self, idx, counter_type, cnt_name, comment=""):
        assert counter_type in _COUNTER_TYPES.values(), (
            counter_type,
            _COUNTER_TYPES.values(),
        )
        self.creation_date = datetime.now()
        self.uuid = str(uuid.uuid4())
        if counter_type == _COUNTER_TYPES["int"]:
            self.idx = idx
        elif counter_type == _COUNTER_TYPES["uuid"]:
            self.idx = str(uuid.uuid4())
        else:
            raise NotImplementedError(
                dict(counter_type=counter_type, types=_COUNTER_TYPES)
            )
        self.cnt_name = cnt_name
        self.comment = comment
        self.counter_type = counter_type
        self.version = "v3"

    def to_dict(self):
        return {
            k: getattr(self, k)
            for k in [
                "uuid",
                "creation_date",
                "idx",
                "cnt_name",
                "comment",
                "counter_type",
            ]
        }

    def __str__(self):
        return str(self.to_dict())

    @classmethod
    def from_prev_cnt(cls, cnt_dict, increment):
        # def __init__(self, idx, counter_type, cnt_name, comment=""):
        logging.warning(cnt_dict)
        if cnt_dict["counter_type"] == _COUNTER_TYPES["int"]:
            cnt_ = cls(
                idx=int(cnt_dict["idx"]) + increment,
                **{k: cnt_dict[k] for k in ["cnt_name", "comment", "counter_type"]},
            )
        elif cnt_dict["counter_type"] == _COUNTER_TYPES["uuid"]:
            cnt_ = cls(
                idx=str(uuid.uuid4()),
                **{k: cnt_dict[k] for k in ["cnt_name", "comment", "counter_type"]},
            )
        else:
            raise NotImplementedError(dict(cnt=cnt.to_dict(), types=_COUNTER_TYPES))
        return cnt_


@click.group()
@click_option_with_envvar_explicit(
    "--database-fn",
    type=click.Path(),
    default=path.join(path.split(__file__)[0], ".cnt.db"),
)
@click_option_with_envvar_explicit(
    "--skip-integrity-check/--no-skip-integrity-check", default=False
)
@click.pass_context
def cnt(ctx, database_fn, skip_integrity_check):
    engine = create_engine(f"sqlite:///{path.abspath(database_fn)}", echo=False)
    _sessionmaker = sessionmaker(bind=engine)
    if not skip_integrity_check:
        Base.metadata.create_all(engine)
    session = _sessionmaker()

    ctx.ensure_object(dict)
    ctx.obj["engine"] = engine
    ctx.obj["session"] = session


def _get_cnt_df(session):
    subq = (
        session.query(
            func.max(Cnt.creation_date).label("last_used"),
            Cnt.cnt_name,
            func.min(Cnt.creation_date).label("creation_date"),
        )
        .group_by(Cnt.cnt_name)
        .subquery()
    )

    res = (
        session.query(Cnt, subq)
        .join(
            subq,
            (subq.c.cnt_name == Cnt.cnt_name) & (Cnt.creation_date == subq.c.last_used),
        )
        .all()
    )
    df = pd.DataFrame(
        [
            # r.to_dict()
            dict(r.to_dict(), last_used=last_used)
            for (r, _, _, last_used) in res
        ]
    )

    df.set_index("cnt_name", inplace=True)
    df.sort_index(inplace=True)
    return df


@cnt.command()
@click_option_with_envvar_explicit("-v", "--version", type=click.IntRange(min=2, max=2))
@click.pass_context
def migrate_db(ctx, version):
    """
    sample migration workflow:
    sqlite> create table cnt2 as select *,"" as comment from cnt;
    sqlite> select * from cnt2;
    ...
    sqlite> drop table cnt;
    sqlite> create table cnt as select *,"" as comment from cnt2;
    """

    logging.warning(f"migration v{version} -> v{version+1}")

    # engine = create_engine(engine_sqlalchemy_line, future=True)
    engine = ctx.obj["engine"]

    # with engine.begin() as conn:
    #     for tn, df in df_mapping.items():
    #         df.to_sql(tn, conn, if_exists="replace", index=False)

    if version == 2:
        with engine.connect() as conn:
            # df = pd.read_sql(text(sql), conn)
            tn = Cnt.__tablename__

            conn.execute(f"drop table if exists {tn}2")

            sql = f"""
            create table {tn}2 as
            select
                uuid,
                creation_date,
                cast(idx as string) idx,
                cnt_name,
                comment,
                "{_COUNTER_TYPES['int']}" counter_type,
                "v{version+1}" as version

                --uuid = Column(String, primary_key=True)
                --creation_date = Column(DateTime)
                --idx = Column(String)
                --cnt_name = Column(String)
                --comment = Column(String)
                --counter_type = Column(String)
                --version = Column(String)
            
            from {tn};
            """
            conn.execute(sql)

            conn.execute(f"drop table {tn}")

            sql = f"""
            create table {tn} as select * from {tn}2;
            """
            conn.execute(sql)

            conn.execute(f"drop table {tn}2")
    else:
        raise NotImplementedError(dict(version=version))


@cnt.command()
@click.pass_context
@click_option_with_envvar_explicit("-n", "--name")
@click_option_with_envvar_explicit("-l/ ", "--long-form/--no-long-form", default=False)
def ls(ctx, name, long_form):
    # TODO: implement when `name` is given, print only value
    # TODO: long form: show all, not only max
    session = ctx.obj["session"]
    if long_form:
        df = pd.DataFrame(map(operator.methodcaller("to_dict"), session.query(Cnt)))
        df.sort_values(by=["cnt_name", "creation_date"])
        df.set_index(["cnt_name", "idx"], inplace=True)
        if name is not None:
            df = df.loc[name]
        click.echo(df)
    else:
        df = _get_cnt_df(session)
        if name is None:
            click.echo(df)
        else:
            click.echo(df.loc[name, "idx"])


@cnt.command()
@click_option_with_envvar_explicit("-n", "--name", required=True)
@click_option_with_envvar_explicit("-i", "--init-count", type=int, default=1)
@click_option_with_envvar_explicit(
    "-c", "--increment", type=click.IntRange(min=1), default=1
)
@click_option_with_envvar_explicit("-m", "--comment", default="")
@click_option_with_envvar_explicit(
    "-t", "--counter-type", type=click.Choice(_COUNTER_TYPES), default="int"
)
@click.pass_context
def inc(ctx, name, init_count, increment, comment, counter_type):
    session = ctx.obj["session"]
    df = _get_cnt_df(session)
    if name in df.index:
        cnt_ = Cnt.from_prev_cnt(
            dict(df.to_dict(orient="index")[name], cnt_name=name), increment
        )
        pass
    else:
        cnt_ = Cnt(
            idx=init_count,
            cnt_name=name,
            comment=comment,
            counter_type=_COUNTER_TYPES[counter_type],
        )
    logging.warning(f"insert {cnt_}")
    session.add(cnt_)
    session.commit()
    click.echo(cnt_.idx)


if __name__ == "__main__":
    if path.isfile(".env"):
        logging.warning("loading .env")
        load_dotenv()
    cnt(auto_envvar_prefix="CNT", show_default=True)
