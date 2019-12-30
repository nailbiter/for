#!/usr/bin/env python3
import numpy as np
import pandas as pd
from pytz import timezone

dateparse = lambda x: pd.datetime.strptime(x, '%Y-%m-%dT%H:%M:%S.%fZ""')
money = pd.read_csv("pandas.csv")

money["date"] = pd.to_datetime(money["date"],format='%Y-%m-%dT%H:%M:%S.%fZ""',errors="coerce",utc=True).dt.tz_convert(tz="Asia/Tokyo")

money["wd"] = money["date"].dt.weekday
money["y"] = money["date"].dt.year
money["w"] = money["date"].dt.week
money["d"] = money["date"].dt.day

#print(money[money["amount"]==1968])
money = money[(5<=money["wd"]) & (money["wd"]<=6) & (money["category"]=="fun")]

money = money.sort_values(by="date",ascending=False)
print(money)
print(money.dtypes)

if(True):
    print(money.groupby(["y","w"]).agg(
        min_date=pd.NamedAgg(column="date",aggfunc="min"),
        sum_amount=pd.NamedAgg(column="amount",aggfunc="sum"),
        ).to_string())
