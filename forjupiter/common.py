"""===============================================================================

        FILE: common.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-03-08T14:23:23.859782
    REVISION: ---

==============================================================================="""

from datetime import datetime,timedelta
def weekly_period(start=0,end=None,ref_date=None):
    """
    start - inclusive
    end - exclusive
    """
    if end is None:
        end = start
    assert end>=start
    if ref_date is None:
        ref_date = datetime.now()
    end_date = ref_date - timedelta(days=ref_date.weekday()+1+7*(start-1)) #sunday
    start_date = end_date - timedelta(days=7*(end-start))
    return start_date,end_date
