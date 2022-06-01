"""===============================================================================

        FILE: tests/test_weekly_period.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-03-08T14:32:57.210875
    REVISION: ---

==============================================================================="""
import logging
import unittest
from common import weekly_period
from datetime import datetime


class TestWeeklyPeriod(unittest.TestCase):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self._logger = logging.getLogger(self.__class__.__name__)

    def test_something(self):
        s,e = weekly_period(start=1,end=1,ref_date=datetime(2021,3,8))
        self.assertEqual(s.strftime("%Y%m%d"),"20210307")
        self.assertEqual(e.strftime("%Y%m%d"),"20210307")

        s,e = weekly_period(start=1,end=2,ref_date=datetime(2021,3,8))
        self.assertEqual(s.strftime("%Y%m%d"),"20210228")
        self.assertEqual(e.strftime("%Y%m%d"),"20210307")
