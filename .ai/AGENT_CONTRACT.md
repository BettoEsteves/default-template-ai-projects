# AGENT_CONTRACT

This contract defines mandatory behavior for any autonomous or assisted coding agent operating in this repository.

## Mandatory Startup Procedure
1. Read `/.ai/PROJECT_STRUCTURE.md` first.
2. Read `/.ai/rules.md` before creating or editing files.
3. Confirm the requested task maps to the canonical structure.
4. Update `/.ai/task_state.md` with task, status, and next step.
5. Execute only approved file operations.

## Hard Constraints
- **Forbidden:** creating files/folders outside the canonical structure.
- **Forbidden:** bypassing governance files due to tool, IDE, or framework defaults.
- **Forbidden:** committing local-only outputs (`results/`, `logs/`, `tests/scripts/`).
- **Required:** document structural or policy changes in `docs/ADR/`.

## Completion Conditions
- Structure validated against `/.ai/STRUCTURE_CHECKLIST.md`.
- `/.ai/task_state.md` updated to final status.
- Deviations explicitly reported; expected state for bootstrap is no deviations.
