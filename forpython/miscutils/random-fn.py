#!/usr/bin/env python3
"""===============================================================================

        FILE: ./miscutils/random-fn.py

       USAGE: ././miscutils/random-fn.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-04-20T22:21:30.670281
    REVISION: ---

==============================================================================="""

import logging
import os
import sqlite3
import uuid
from datetime import datetime, timedelta
from os import path

import click
import pandas as pd
from sqlalchemy import Column, DateTime, ForeignKey, Integer, String, create_engine
from sqlalchemy.orm import declarative_base, sessionmaker
from sqlalchemy.orm.exc import NoResultFound

Base = declarative_base()


class RandomFileName(Base):
    __tablename__ = "random_file_names"

    uuid = Column(String, primary_key=True)
    creation_date = Column(DateTime)
    extension = Column(String)
    directory = Column(String)
    file_name = Column(String)

    def __init__(self, directory, extension):
        if extension is not None:
            assert extension.startswith(".")
        self.uuid = str(uuid.uuid4())
        self.creation_date = datetime.now()
        self.directory = directory
        self.extension = extension
        _extension = "" if extension is None else extension
        self.file_name = f"{directory}/{str(uuid.uuid4()).replace('-','_')}{_extension}"

    def to_dict(self):
        return {
            k: getattr(self, k)
            for k in [
                "uuid",
                "creation_date",
                "extension",
                "directory",
                "file_name",
            ]
        }

    def is_directory(self):
        return self.extension is None


def _list_db(ctx, param, value):
    if not value or ctx.resilient_parsing:
        return
    click.echo((ctx, param, value))
    ctx.exit()


@click.command()
@click.argument("ext", default="")
@click.option(
    "--database-fn",
    type=click.Path(),
    default=path.join(path.split(__file__)[0], ".random_fn.db"),
)
@click.option("-e", "--ext", "ext_option")
@click.option(
    "-l",
    "--list-db",
    is_flag=True,
    default=False,
)
@click.option("--read/--no-read", "-r/ ", default=False)
@click.option("-d", "--tmp-dir", type=click.Path(), default="/tmp")
@click.option("--index", "-i", type=click.IntRange(min=0), default=0)
@click.option("--log/--no-log", " /-n", "is_log", default=True)
def random_fn(ext, database_fn, read, tmp_dir, index, list_db, ext_option, is_log):
    engine = create_engine(f"sqlite:///{path.abspath(database_fn)}", echo=False)
    _sessionmaker = sessionmaker(bind=engine)
    Base.metadata.create_all(engine)
    session = _sessionmaker()

    if list_db:
        click.echo(
            pd.DataFrame(
                [
                    rfn.to_dict()
                    for rfn in session.query(RandomFileName).order_by(
                        RandomFileName.creation_date.desc()
                    )
                ]
            )
        )
        exit(0)

    if ext_option is not None:
        ext = ext_option
    elif ext == "":
        ext = None
    if is_log:
        logging.warning(f'ext: "{ext}"')

    if not read:
        rfn = RandomFileName(tmp_dir, ext)
        if rfn.is_directory():
            logging.warning(f'creating dir "{rfn.file_name}"')
            os.makedirs(rfn.file_name, exist_ok=False)
        session.add(rfn)
    else:
        
        rfn = (
            session.query(RandomFileName)
            .filter_by(extension=ext, directory=tmp_dir)
            .order_by(RandomFileName.creation_date.desc())
            .limit(index + 1)[index]
        )

    if is_log:
        logging.warning(rfn.file_name)
    click.echo(rfn.file_name)
    session.commit()


if __name__ == "__main__":
    random_fn()
