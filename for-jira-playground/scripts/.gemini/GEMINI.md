# Project Tools & Instructions

## Custom Tool for getting list of Jira sprints

I have a custom Python script to fetch a list of my Jira sprints.

- **Tool Name:** `list_sprints`
- **Purpose:** To get list of Jira scripts
- **Command:** `/usr/local/anaconda3/envs/base-with-altp/bin/python /Users/nailbiter/for/for-jira-playground/scripts/list-sprints.py`

When I ask you to "get a list of my Jira sprints" or something similar, you should use this tool.

# Jira Setup

Here's a summary of what I've learned about your Jira setup:

*   **Projects**: You have several projects, and we've been working primarily in "My Life 3" (ML3).
*   **Issue Hierarchy**:
    *   We've worked with Epics, Stories, and Sub-tasks.
    *   Stories are linked to Epics via the `parent` field.
*   **Sprints**:
    *   You have a custom script for listing sprints.
    *   The active sprint is identified by its state.
    *   The "Sprint" field is a custom field (`customfield_10020`).
*   **Time Tracking**: You use the "Original Estimate" field (`timetracking`) to track the estimated time for your issues.
*   **JQL**: I can use JQL to search for issues based on criteria like epic link and status.