# Decisions Log

This file indexes governance decisions that affect template usage.

## Initial Decisions
1. The repository structure is centrally governed by `/.ai/PROJECT_STRUCTURE.md`.
2. Local-only execution artifacts (`results/`, `logs/`, `tests/scripts/`) are mandatory ignores.
3. CI enforces structure and prevents accidental commits of forbidden paths.

## Change Process
When a new decision impacts structure, policy, or delivery flow:
- Add a dated entry here.
- Add or update an ADR in `docs/ADR/`.
- Reflect operational impact in `/.ai/rules.md`.
