# Copilot Workspace Instructions

## Purpose
Always-on instructions for VS Code Copilot Chat and compatible agents.

## Governance First
- Treat `.ai/PROJECT_STRUCTURE.md` as the structural source of truth.
- Follow `.ai/AGENT_CONTRACT.md` and `.ai/rules.md` before proposing edits.
- Do not create files outside governed structure unless governance is updated first.

## Coding Scope
- Python in `src/python/`, R in `src/r/`, Rust in `src/rust/`.
- Tests in `tests/unit/` and `tests/integration/`.
- Keep `results/`, `logs/`, and `tests/scripts/` local-only.

## Quality and Safety
- Prefer small, verifiable changes.
- Update docs when behavior, structure, or policy changes.
- Never commit secrets or credentials.
- Respect security/privacy constraints documented in `SECURITY.md`.

## AI Workflow
- Start by clarifying scope, acceptance criteria, and risks.
- Use Plan-first for complex tasks.
- Require test evidence for behavior-changing updates.
