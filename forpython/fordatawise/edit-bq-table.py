#!/usr/bin/env python3
"""===============================================================================

        FILE: ./edit-bq-table.py

       USAGE: ././edit-bq-table.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-02-09T11:30:07.635658
    REVISION: ---

==============================================================================="""

import click
from google.cloud import bigquery


@click.command()
@click.argument("table_name")
@click.option("-i", "--index", type=int, default=0)
@click.option("--dry-run/--no-dry-run", default=True)
@click.option("-s", "--sort", nargs=2, multiple=True)
def edit_bq_table(table_name, index, dry_run, sort):
    client = bigquery.Client()
    df = client.query(
        f"select * from `{table_name}`").to_dataframe(progress_bar_type="tqdm")
    if len(sort) > 0:
        df = df.sort_values(by=[fn for fn, _ in sort],
                            ascending=[bool(asc) for _, asc in sort], ignore_index=True)
    click.echo(df)
    click.echo(f"going to drop {df.to_dict(orient='records')[index]}")
    if not dry_run:
        df = df.drop([index])
        client.load_table_from_dataframe(dataframe=df, destination=table_name,
                                         job_config=bigquery.job.LoadJobConfig(write_disposition="WRITE_TRUNCATE"))
    else:
        click.echo("dry_run")


if __name__ == "__main__":
    edit_bq_table()
