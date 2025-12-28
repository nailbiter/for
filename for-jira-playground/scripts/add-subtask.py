#!/usr/bin/env python3
"""===============================================================================

        FILE: /Users/nailbiter/for/for-jira-playground/scripts/add-subtask.py

       USAGE: ./add-subtask.py -i <issue_id> -s <summary>

 DESCRIPTION: Adds a subtask to a given Jira task using Click.

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2025-12-27T19:39:52.872186
    REVISION: ---

==============================================================================="""

import click
import os
import sys
from jira import JIRA
from dotenv import load_dotenv


# -----------------------------------------------------------------------------
# Configuration (Embedded Credentials)
# -----------------------------------------------------------------------------
@click.command()
@click.option("-i", "--issue", required=True, help="Parent Issue ID (e.g., ML3-3962)")
@click.option("-s", "--summary", required=True, help="Subtask summary")
def main(issue, summary):
    """Adds a subtask to a given Jira task."""

    # 1. Connect to Jira
    try:
        server = os.environ["JIRA_URL"]
        if not server.startswith("https://"):
            server = "https://" + server
        jira = JIRA(
            server=server,
            basic_auth=(os.environ["JIRA_EMAIL"], os.environ["JIRA_API_TOKEN"]),
        )
    except Exception as e:
        click.secho(f"Error: Failed to connect to Jira. {e}", fg="red", err=True)
        sys.exit(1)

    # 2. Create Subtask
    try:
        # Fetch parent to ensure we use the correct Project Key
        parent = jira.issue(issue)
        project_key = parent.fields.project.key

        click.echo(f"Parent found: {parent.key} (Project: {project_key})")

        issue_dict = {
            "project": {"key": project_key},
            "summary": summary,
            "description": f"Subtask created via CLI for parent {issue}",
            "issuetype": {"name": "Subtask"},
            "parent": {"key": issue},
        }

        subtask = jira.create_issue(fields=issue_dict)

        click.secho(f"SUCCESS: Subtask created: {subtask.key}", fg="green")
        click.echo(f"Link: {os.environ['JIRA_URL']}/browse/{subtask.key}")

    except Exception as e:
        click.secho(f"Error creating subtask: {e}", fg="red", err=True)
        sys.exit(1)


if __name__ == "__main__":
    load_dotenv()
    main()
