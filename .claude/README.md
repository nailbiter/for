# .claude/ — Universal Claude Code Template

## Files

### settings.json
- `autoCompact: true` — enables automatic context window compaction
- `hooks` — see below

### hook-save-request.py
Triggered on `UserPromptSubmit`. Saves the user's prompt to:
```
.claude-history/<session_id>/<timestamp>-request.md
```

### hook-save-reply.py
Triggered on `Stop`. Reads Claude's last assistant message from the
internal JSONL transcript (`~/.claude/projects/…`) and saves it to:
```
.claude-history/<session_id>/<timestamp>-reply.md
```
Waits 3 seconds for the transcript to flush before reading.

## Hooks summary

| Event              | Matcher | Action |
|--------------------|---------|--------|
| UserPromptSubmit   | —       | Save prompt to `.claude-history/` |
| Stop               | —       | Save reply to `.claude-history/` + play Glass sound |
| PostToolUseFailure | Bash    | Play Ping sound |

## Usage as a template
- **Symlink**: `ln -s /path/to/this/.claude .claude`
- **Copy**: `cp -r /path/to/this/.claude .claude` then edit as needed
- `.claude-history/` is created automatically; add it to `.gitignore`
