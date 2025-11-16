"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/miscutils/_aprompt/jira_utils.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2025-11-16T14:08:18.703057
    REVISION: ---

==============================================================================="""
import requests
import json
from urllib.parse import urlparse
from alex_leontiev_toolbox_python.utils.logging_helpers import get_configured_logger


def get_jira_issue_context(
    issue_url: str, email: str, api_token: str, logger_kwargs: dict = {}
) -> dict:
    """
    Fetches a comprehensive JSON description of a Jira issue for LLM context.

    Args:
        issue_url (str): Full URL (e.g., https://company.atlassian.net/browse/PROJ-123)
        email (str): Your Jira account email.
        api_token (str): Your Jira API token (not password).

    Returns:
        dict: A cleaned, semantic dictionary containing issue details, comments,
              and linked issue summaries.
    """

    logger = get_configured_logger("get_jira_issue_context", **logger_kwargs)

    # 1. Parse the URL to get domain and issue key
    parsed = urlparse(issue_url)
    domain = parsed.netloc
    # Handle URL paths like /browse/KEY-123 or /jira/browse/KEY-123
    path_parts = parsed.path.strip("/").split("/")
    issue_key = path_parts[-1]

    # 2. Construct API Endpoint
    # We use API v3.
    # expand=renderedFields: Gets HTML version of description/comments (easier for LLMs than ADF JSON)
    # expand=names: Gets the human mapping for customfield_xxxxx
    # expand=changelog: Gets history of changes
    api_endpoint = f"https://{domain}/rest/api/3/issue/{issue_key}"
    params = {"expand": "renderedFields,names,changelog"}

    try:
        response = requests.get(
            api_endpoint,
            auth=(email, api_token),
            params=params,
            headers={"Content-Type": "application/json"},
        )
        response.raise_for_status()
        data = response.json()
    except requests.exceptions.RequestException as e:
        logger.error(e)
        return {"error": f"Failed to fetch issue: {str(e)}"}

    # 3. Post-Processing for LLM Optimization
    # Raw Jira JSON is heavy with URLs and IDs. We want to make it semantic.

    # Create a mapping of customfield_ID -> Human Name
    field_map = data.get("names", {})

    # Extract the core fields
    raw_fields = data.get("fields", {})
    rendered_fields = data.get("renderedFields", {})

    output = {
        "key": data.get("key"),
        "summary": raw_fields.get("summary"),
        "status": raw_fields.get("status", {}).get("name"),
        "priority": raw_fields.get("priority", {}).get("name"),
        "issue_type": raw_fields.get("issuetype", {}).get("name"),
        "creator": raw_fields.get("creator", {}).get("displayName"),
        "assignee": raw_fields.get("assignee", {}).get("displayName")
        if raw_fields.get("assignee")
        else "Unassigned",
        "created": raw_fields.get("created"),
        "updated": raw_fields.get("updated"),
    }

    # 4. Handle Description (Prefer Rendered HTML for LLM readability)
    # Jira Cloud uses ADF (complex JSON) by default. RenderedFields gives us HTML.
    if "description" in rendered_fields:
        output["description_html"] = rendered_fields["description"]
    else:
        output["description_raw"] = raw_fields.get("description")

    # 5. Handle Comments (Prefer Rendered HTML)
    # raw_fields contains the structure, renderedFields contains the readable text
    comments = []
    raw_comments = raw_fields.get("comment", {}).get("comments", [])

    for idx, comment in enumerate(raw_comments):
        # Try to find the rendered version, fallback to raw
        body = comment.get("body")
        if "comment" in rendered_fields and "comments" in rendered_fields["comment"]:
            try:
                body = rendered_fields["comment"]["comments"][idx].get("body", body)
            except IndexError:
                pass  # Fallback to raw body

        comments.append(
            {
                "author": comment.get("author", {}).get("displayName"),
                "created": comment.get("created"),
                "body": body,
            }
        )
    output["comments"] = comments

    # 6. Handle Linked Issues (Inward and Outward)
    links = []
    for link in raw_fields.get("issuelinks", []):
        link_info = {}
        # Check if it's an outward link (blocks, relates to...) or inward (is blocked by...)
        if "outwardIssue" in link:
            link_info = {
                "type": link["type"]["outward"],
                "key": link["outwardIssue"]["key"],
                "summary": link["outwardIssue"]["fields"]["summary"],
                "status": link["outwardIssue"]["fields"]["status"]["name"],
            }
        elif "inwardIssue" in link:
            link_info = {
                "type": link["type"]["inward"],
                "key": link["inwardIssue"]["key"],
                "summary": link["inwardIssue"]["fields"]["summary"],
                "status": link["inwardIssue"]["fields"]["status"]["name"],
            }
        if link_info:
            links.append(link_info)
    output["linked_issues"] = links

    # 7. Map relevant Custom Fields
    # We iterate over fields, looking for 'customfield_' and replacing keys with names
    custom_data = {}
    for key, value in raw_fields.items():
        if key.startswith("customfield_") and value is not None:
            human_name = field_map.get(key)
            if human_name:
                # Simple values (strings, numbers) are kept as is.
                # Complex objects (dicts) are usually reduced to a 'value' or 'name' if possible,
                # but for safety we keep the raw structure for the LLM to parse.
                custom_data[human_name] = value

    output["custom_fields"] = custom_data

    return output


# # Example Usage
# if __name__ == "__main__":
#     # Replace these with your actual details
#     URL = "https://your-domain.atlassian.net/browse/PROJ-123"
#     EMAIL = "your_email@example.com"
#     TOKEN = "your_api_token"

#     # Note: This will fail if you don't put real credentials in
#     print("Function loaded. Call get_jira_issue_context() with real credentials.")

#     example = get_jira_issue_context('https://nailbiter91.atlassian.net/browse/ML3-882', EMAIL, TOKEN)
#     print(json.dumps(example, indent=2))
