# GitHub Flow Standards

## Purpose
Define branch, pull request, and review standards for repositories derived from this template.

## Branch Strategy
- Keep `main` protected.
- Create short-lived feature branches from `main`.
- Merge only via pull request with required checks.

## Pull Request Rules
- Use `.github/pull_request_template.md`.
- Link requirements, tests, and risk notes.
- Require review from code owners when applicable.

## Required Checks (Baseline)
- Structure validation
- Forbidden tracked folder gate
- Python tests and baseline quality checks
- Terraform format and validate checks

## Merge Policy
- Prefer squash merge for clean history.
- No direct commits to `main`.
- All policy exceptions require documented approval.
