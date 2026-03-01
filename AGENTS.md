# AGENTS

This file provides always-on agent instructions for tools that support `AGENTS.md`.

## Priority
1. `.ai/PROJECT_STRUCTURE.md`
2. `.ai/AGENT_CONTRACT.md`
3. `.ai/rules.md`
4. This file (`AGENTS.md`)

## Global Rules
- Keep work inside canonical structure.
- Preserve language lane boundaries (`src/python`, `src/r`, `src/rust`).
- Keep local-only folders untracked.
- Document governance-impacting changes.

## Delivery Expectations
- Plan before build for medium/large tasks.
- Implement with tests and rollback awareness.
- Keep CI green and consistent with repository policies.
