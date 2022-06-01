#!/usr/bin/env python3
import numpy as np
import pandas as pd

money = pd.read_json("pandas.json",lines=True)
money = money.drop("_id",axis=1)
money = money[money["category"]=="fun"]
money = money.drop(["category","amount"],axis=1)
money["date"] = pd.to_datetime(money["date"].map(lambda x:int(x["$date"]["$numberLong"])),unit="ms",errors="coerce")
money = money[(money["date"].dt.month==11) & (money["date"].dt.year==2019)]

money = money.sort_values(by="date")
print(money)
