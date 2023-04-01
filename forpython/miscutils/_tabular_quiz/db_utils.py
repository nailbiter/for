"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/miscutils/_tabular_quiz/db_utils.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2023-03-25T20:54:26.155698
    REVISION: ---

==============================================================================="""

from sqlalchemy import (
    Column,
    DateTime,
    ForeignKey,
    Integer,
    String,
    create_engine,
    Float,
)
from sqlalchemy.orm import declarative_base, sessionmaker
from sqlalchemy.orm.exc import NoResultFound
import uuid
from datetime import datetime, timedelta
import json

Base = declarative_base()


class QuizScore(Base):
    __tablename__ = "quiz_scores"

    uuid = Column(String, primary_key=True)
    creation_date = Column(DateTime)
    google_spreadsheet_id = Column(String)
    grade = Column(Float)
    dropout_rate = Column(Float)
    obj_json = Column(String)

    def __init__(self, google_spreadsheet_id, grade, dropout_rate, obj):
        self.uuid = str(uuid.uuid4())
        self.creation_date = datetime.now()

        self.google_spreadsheet_id = google_spreadsheet_id
        self.grade = grade
        self.dropout_rate = dropout_rate
        self.obj_json = json.dumps(obj)

    def to_dict(self):
        d = {
            k: getattr(self, k)
            for k in """
            uuid
            creation_date
            google_spreadsheet_id
            grade
            dropout_rate
            """.strip().split()
        }
        d["obj"] = json.loads(self.obj_json)
        return d

    def __str__(self):
        return str(self.to_dict())


#     def is_directory(self):
#         return self.extension is None


# def _list_db(ctx, param, value):
#     if not value or ctx.resilient_parsing:
#         return
#     click.echo((ctx, param, value))
#     ctx.exit()


# @click.command()
# @click.argument("ext", default="")
# @click.option(
#     "--database-fn",
#     type=click.Path(),
#     default=path.join(path.split(__file__)[0], ".random_fn.db"),
# )
# @click.option("-e", "--ext", "ext_option")
# @click.option(
#     "-l",
#     "--list-db",
#     is_flag=True,
#     default=False,
# )
# @click.option("--read/--no-read", "-r/ ", default=False)
# @click.option("-d", "--tmp-dir", type=click.Path(), default="/tmp")
# @click.option("--index", "-i", type=click.IntRange(min=0), default=0)
# @click.option("--log/--no-log", "is_log", default=True)
# def random_fn(ext, database_fn, read, tmp_dir, index, list_db, ext_option, is_log):

#     if list_db:
#         click.echo(
#         exit(0)
