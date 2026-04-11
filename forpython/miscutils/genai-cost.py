#!/usr/bin/env python
import os
import json
from google.cloud import pubsub_v1
from dotenv import load_dotenv

# Load your local config
# --- PATH CONFIGURATION ---
# This ensures the script always finds the .env file in its OWN directory
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
ENV_PATH = os.path.join(SCRIPT_DIR, ".genai-cost.env")
# We keep the state file in your home directory so it persists across all projects

# Load environment variables from the script's folder
load_dotenv(ENV_PATH)

# Config from environment
PROJECT_ID = os.environ.get("PROJECT_ID")
SUBSCRIPTION_ID = os.environ.get("SUBSCRIPTION_ID")
# Path for the local state cache in your home directory
STATE_FILE = os.path.expanduser("~/.claude_spend.json")


def get_latest_spend():
    subscriber = pubsub_v1.SubscriberClient()
    subscription_path = subscriber.subscription_path(PROJECT_ID, SUBSCRIPTION_ID)

    # 1. Attempt to pull a new message from Pub/Sub
    try:
        # We use a short timeout so the script doesn't hang if the queue is empty
        response = subscriber.pull(
            request={"subscription": subscription_path, "max_messages": 1}, timeout=2.0
        )

        for msg in response.received_messages:
            # Parse the incoming budget data
            data = json.loads(msg.message.data.decode("utf-8"))

            # Update our local state cache
            with open(STATE_FILE, "w") as f:
                json.dump(data, f)

            # Acknowledge the message so it is removed from the Google queue
            subscriber.acknowledge(
                request={"subscription": subscription_path, "ack_ids": [msg.ack_id]}
            )
    except Exception:
        # If no message is found or a timeout occurs, we just proceed
        # to display the last cached data.
        pass

    # 2. Display the current spend (either from the new message or the cache)
    if os.path.exists(STATE_FILE):
        with open(STATE_FILE, "r") as f:
            state = json.load(f)
            current_spend = state.get("costAmount", 0)
            budget_limit = state.get("budgetAmount", 0)

            print(f"--- Project: {PROJECT_ID} ---")
            print(f"Accumulated Spend: {current_spend}")
            if budget_limit > 0:
                progress = (current_spend / budget_limit) * 100
                print(f"Progress: {progress:.1f}% of {budget_limit}")
            else:
                print("Budget limit not set.")
    else:
        print(
            "No spend data synced yet. Run some commands and wait for the next update."
        )


if __name__ == "__main__":
    get_latest_spend()
