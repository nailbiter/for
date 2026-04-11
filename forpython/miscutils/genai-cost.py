#!/usr/bin/env python
import os
import json
from google.cloud import pubsub_v1
from dotenv import load_dotenv

# --- PATH CONFIGURATION ---
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
ENV_PATH = os.path.join(SCRIPT_DIR, ".genai-cost.env")
STATE_FILE = os.path.expanduser("~/.claude_spend.json")

# Load config
load_dotenv(ENV_PATH)

PROJECT_ID = os.environ.get("PROJECT_ID")
SUBSCRIPTION_ID = os.environ.get("SUBSCRIPTION_ID")


def get_latest_spend():
    if not PROJECT_ID or not SUBSCRIPTION_ID:
        print(f"Error: Missing PROJECT_ID or SUBSCRIPTION_ID in {ENV_PATH}")
        return

    subscriber = pubsub_v1.SubscriberClient()

    # Handle both full paths and short IDs gracefully
    if "/" in SUBSCRIPTION_ID:
        subscription_path = SUBSCRIPTION_ID
    else:
        subscription_path = subscriber.subscription_path(PROJECT_ID, SUBSCRIPTION_ID)

    # 1. Attempt to pull a new message from Pub/Sub
    try:
        # Increased timeout to 10s for better reliability from Tokyo
        response = subscriber.pull(
            request={"subscription": subscription_path, "max_messages": 1}, timeout=10.0
        )

        for msg in response.received_messages:
            data = json.loads(msg.message.data.decode("utf-8"))

            # Update local state cache
            with open(STATE_FILE, "w") as f:
                json.dump(data, f)

            # Acknowledge the message
            subscriber.acknowledge(
                request={"subscription": subscription_path, "ack_ids": [msg.ack_id]}
            )
    except Exception:
        # Fallback to cache if no message or timeout
        pass

    # 2. Display the current spend
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
            "Waiting for first sync from Google. Ensure you have closed the 'Pull' window in your browser."
        )


if __name__ == "__main__":
    get_latest_spend()
