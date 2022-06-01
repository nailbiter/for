#!/usr/bin/env python3
"""===============================================================================

        FILE: watch.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2022-04-15T14:46:01.286695
    REVISION: ---

==============================================================================="""

import click
#from dotenv import load_dotenv
import os
from os import path
import logging
import requests
import pandas as pd
import json
import time
import tqdm
from jinja2 import Template


@click.command()
@click.option("-u", "--user", required=True, envvar="WATCH__USER")
@click.option("-p", "--password", envvar="WATCH__PASSWORD")
@click.option("-o", "--organization", help="comma-separated", envvar="WATCH__ORGANIZATION")
@click.option("-d", "--delay-seconds", type=int, default=120, help="https://docs.github.com/en/rest/overview/resources-in-the-rest-api#rate-limiting")
@click.option("-s", "--slack-url", required=True, envvar="WATCH__SLACK_URL")
def watch(user, password, organization, delay_seconds, slack_url):
    requests_kwargs = {}
    if password is not None:
        requests_kwargs["auth"] = (user, password)

    df = None
    pbar = tqdm.tqdm()

    while True:
        requests_count = 0
        repos = set()
        for i, uo in enumerate([user]+(organization.split(","))):
            is_user = i == 0
#            print((is_user, uo))
            url = f"https://api.github.com/{'users' if is_user else 'orgs'}/{uo}/repos"
            r = requests.get(url, **requests_kwargs)
            requests_count += 1
            assert r.status_code == 200, (r, r.status_code, r.json())
            r = r.json()
            repos.update([(is_user, rr["name"], uo) for rr in r])
#        print(repos)

        rs = []
        for is_user, repo_name, uo_name in repos:
            # FIXME: pull only related to user
            url = f"https://api.github.com/repos/{uo_name}/{repo_name}/pulls"
            r = requests.get(url, **requests_kwargs)
            requests_count += 1
            assert r.status_code == 200, (r, r.status_code, r.json())
            r = r.json()
            r = pd.DataFrame(r)
            r["repo_name"] = repo_name
            r["uo_name"] = uo_name
            r["is_user"] = is_user
            rs.append(r)
        _df = pd.concat(rs)
        logging.warning(f"{requests_count} requests done")

        _df = _df[_df.user.apply(lambda o:o.get("login")) == user]

#        print(_df)
#        print(sorted(list(_df)))
        _df.to_json("/tmp/6e877430_4ae1_48d0_b3ef_6d3b354892eb.json",
                    orient="records")

        _df = _df[["repo_name", "number",
                   "requested_reviewers", "uo_name", "title"]]
        _df["is_waiting_for_review"] = _df.pop(
            "requested_reviewers").apply(len) > 0
        _df.number = _df.number.apply(int)
        _df["url"] = [
            f"https://github.com/{uo_name}/{repo_name}/pull/{number}"
            for repo_name, number, uo_name
            in _df[["repo_name", "number", "uo_name"]].values
        ]
        _df.insert(len(list(_df))-1, "title", _df.pop("title"))
        _df = _df.drop(columns=["uo_name"])
        _df = _df.set_index(["repo_name", "number"]).sort_index()
        print(_df.to_string())

        if df is not None:
            joined_df = df.join(_df, how="right", rsuffix="_new")
            joined_df.is_waiting_for_review = joined_df.is_waiting_for_review.fillna(
                False)
            joined_df = joined_df[joined_df.is_waiting_for_review &
                                  ~joined_df.is_waiting_for_review_new]
            if len(joined_df) > 0:
                requests.post(slack_url, data=json.dumps({
                    'text': Template("""
                    requests {%for url in urls%}{{url}}{{", " if not loop.last}}{%endfor%} are reviewed!
                    """).render({
                        "urls": list(joined_df.url),
                    }).strip(),
                    'username': u'Bakira-Tech-Python-Bot',  # ユーザー名
                    #					'icon_emoji': u':smile_cat:',  #アイコン
                    #					'link_names': 1,  #名前をリンク化
                }))
        time.sleep(delay_seconds)
        df = _df
        pbar.update(1)


if __name__ == "__main__":
    #    if path.isfile(".env"):
    #        logging.warning("loading .env")
    #        load_dotenv()
    watch()
