# Contributing Guide

## Purpose
Define a clear contribution flow for projects bootstrapped from this template.

## Contribution Workflow
1. Open an issue or task in `docs/BoardTasks.md` with scope and acceptance criteria.
2. Create a short-lived branch from `main`.
3. Implement in canonical folders only.
4. Add or update tests and documentation.
5. Open a pull request using `.github/pull_request_template.md`.
6. Wait for required CI checks and review approvals.

## Quality Gates
- Structure validation must pass.
- Forbidden local-only tracked paths must not appear.
- Relevant tests must pass.
- Terraform checks must pass when IaC is changed.

## Commit and PR Conventions
- Keep commits small and descriptive.
- Explain **why** in commit/PR description, not only **what** changed.
- Reference impacted standards when changing governance.

## Security and Privacy
- Never commit secrets.
- Flag any data-protection impact in the PR.
- Follow `SECURITY.md` for reporting vulnerabilities.

## Governance Changes
If contribution adds/changes template structure:
- Update `.ai/PROJECT_STRUCTURE.md`.
- Update `.ai/STRUCTURE_CHECKLIST.md`.
- Update CI required paths.
- Record decision in `docs/ADR/` and `.ai/decisions.md`.
