# Productivity, Quality, and CI/CD Playbook

## Purpose
Provide an operational playbook combining MCP context, coding standards, and automated CI/CD.

## Core Operating Loop
1. Capture context (Jira/Azure + repository docs).
2. Plan with `task-planner`.
3. Implement with `swe-implementer` (or `terraform-iac-reviewer` for IaC).
4. Run security/governance review.
5. Validate with CI checks.
6. Update docs and work items.

## Fast Path (Small Changes)
- Use direct implementation with explicit acceptance criteria.
- Run targeted tests and required linters/validators.
- Link work item and evidence in PR.

## Full Path (Medium/Large Changes)
- Use planner first.
- Split into verifiable slices.
- Require security review gate before merge.
- Ensure CI + security workflows pass.

## CI/CD Baseline in this Template
- Structure enforcement (`ci.yml`).
- Python tests with coverage.
- Terraform fmt/init/validate.
- Security scans (`security.yml`).

## Documentation Discipline
- Behavior changes require tests + docs.
- Governance/structure changes require checklist and policy updates.
- Record decisions and rationale in ADRs.
