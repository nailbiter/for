"""===============================================================================

        FILE: _common.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2022-12-31T09:59:13.639716
    REVISION: ---

==============================================================================="""

import functools
import json
import logging
import uuid
from datetime import datetime

from sqlalchemy import Column, DateTime, ForeignKey, Integer, String, create_engine
from sqlalchemy.orm import declarative_base, sessionmaker
from sqlalchemy.orm.exc import NoResultFound

from _common.requests_cache import RequestGet

Base = declarative_base()

_canonical_json = functools.partial(json.dumps, sort_keys=True)


class CacheRecord(Base):
    __tablename__ = "cache_records"

    uuid = Column(String, primary_key=True)
    input_json = Column(String)
    output_json = Column(String)
    creation_date = Column(DateTime)

    def __init__(self, input_json, output_json, creation_date=None):
        self.input_json = input_json
        self.output_json = output_json
        self.uuid = str(uuid.uuid4())
        self.creation_date = datetime.now() if creation_date is None else creation_date

    def __repr__(self):
        return "<User(name='%s', fullname='%s', nickname='%s')>" % (
            self.name,
            self.fullname,
            self.nickname,
        )


class CacheAccessRecord(Base):
    __tablename__ = "cache_access_records"
    uuid = Column(String, primary_key=True)
    cache_record_uuid = Column(String, ForeignKey("cache_records.uuid"))
    date = Column(DateTime)

    def __init__(self, cache_record_uuid, date=None):
        self.uuid = str(uuid.uuid4())
        self.cache_record_uuid = cache_record_uuid
        self.date = datetime.now() if date is None else date


class DbCacheWrap:
    """
    TODO:
        1. support cache expiration
        2. support force cache miss
        3. support load answer
    """

    def __init__(
        self,
        sqlalchemy_string,
    ):
        self._sqlalchemy_string = sqlalchemy_string
        self._engine = create_engine(sqlalchemy_string, echo=False)
        self._sessionmaker = sessionmaker(bind=self._engine)
        Base.metadata.create_all(self._engine)

    def __call__(self, f):
        @functools.wraps(f)
        def _f(*args, is_force_cache_miss=False, **kwargs):
            input_json = _canonical_json({"args": args, "kwargs": kwargs})
            session = self._sessionmaker()

            cache_record = (
                session.query(CacheRecord)
                .filter(CacheRecord.input_json == input_json)
                .order_by(CacheRecord.creation_date.desc())
                .scalar()
            )
            if cache_record is None:
                res_json, is_cache_hit = None, False
            else:
                res_json = cache_record.output_json
                is_cache_hit = True

            if is_force_cache_miss or (not is_cache_hit):
                logging.warning("cache miss ==> refetch")
                res_json = _canonical_json(f(*args, **kwargs))
                cache_record = CacheRecord(input_json=input_json, output_json=res_json)
                access_date = cache_record.creation_date
                session.add(cache_record)
            else:
                logging.warning("cache hit")
                access_date = None

            session.add(
                CacheAccessRecord(cache_record_uuid=cache_record.uuid, date=access_date)
            )

            session.commit()

            return json.loads(res_json)

        return _f
