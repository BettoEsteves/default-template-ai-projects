# commands.ai

Purpose: define repeatable high-level commands for agent-driven workflows.

## Standard Commands
- `bootstrap-template`: validate/create canonical structure and governance files.
- `validate-structure`: run checklist and CI-equivalent structure assertions.
- `prepare-pr`: verify docs, rules, and local-only path exclusions.
- `record-decision`: create/update ADR entry and `/.ai/decisions.md` index.
- `run-vibe-cycle`: execute Vibe Coding stages from `docs/VibeCodingAgent.md` including discovery questions, staged implementation, and handoff evidence.

## Command Policy
Commands are declarative wrappers and must not bypass governance constraints.
