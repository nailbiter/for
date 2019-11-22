#!/usr/bin/env python3
from holidays_jp import CountryHolidays;
import argparse;
import calendar;
import datetime;
from itertools import product;
import sys;
import os;


#global const's
WEEKDAY_NAMES_JAP = ["月","火","水","木","金","土","日"];
TMP_FILE_NAME = "/tmp/calendar.csv";
TABLE_NAME = "astute-cumulus-230103:hotoku_airflow_inspection__lake.calendar";
SCHEMA = "date:date,year:integer,month:integer,day:integer,weekday:integer,holiday:integer,holiday_name:string,week_name:string,week:string";
#procedures
def execute(command,dry_run):
    sys.stderr.write("$ {}\n".format(command));
    if( not dry_run ):
        os.system(command);

#main
parser = argparse.ArgumentParser();
parser.add_argument("start_year",type=int,help="year, from which to generate table (inclusive)");
parser.add_argument("end_year",type=int,help="year, till which to generate table (inclusive)");
parser.add_argument("--dry_run",help="dry run (default: false)",action="store_true");
args = parser.parse_args();

holidays = CountryHolidays.between("JP",args.start_year,args.end_year);
cal = calendar.Calendar();

#行 date	year    month	day	weekday	holiday	holiday_name	week_name	week	
#1  2018-01-01	2018	1	1	1	1	元旦	        月	        W02	
with open(TMP_FILE_NAME,"w") as calfile:
    #calfile.write("date,year,month,day,weekday,holiday,holiday_name,week_name,week\n");
    for year,month in product(range(args.start_year,args.end_year+1),range(1,13)):
        myiter = list(cal.itermonthdays(year,month));
        for date in range(1,max(myiter)+1):
            match = [x for x in enumerate(holidays) if x[1][0]==datetime.datetime(year,month,date)];
            calfile.write("{0:04d}-{1:02d}-{2:02d},{0:04d},{1:02d},{2:02d},{3},{4},{5},{6},{7}\n".format(
                year,
                month,
                date,
                calendar.weekday(year,month,date),
                1 if len(match)>0 else 0,
                holidays[match[0][0]][1] if len(match)>0 else "",
                WEEKDAY_NAMES_JAP[calendar.weekday(year,month,date)],
                "W{0:02d}".format(int((date-1+calendar.weekday(year,month,1))/7)),
                ));

execute("bq load --source_format=CSV --replace {} {} {}".format(
    TABLE_NAME,
    TMP_FILE_NAME,
    SCHEMA,
    ),args.dry_run);
