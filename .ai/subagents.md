# Subagent Definitions

Subagents are role-focused executors that must follow `AGENT_CONTRACT.md` and `rules.md`.

## Suggested Subagents
- **governance-agent**: validates structure, policy, and documentation compliance.
- **data-agent**: handles data/ML workflows across Python and R.
- **systems-agent**: handles Rust services and performance-critical modules.
- **platform-agent**: manages CI/CD and Terraform infrastructure concerns.
- **review-agent**: checks quality, risks, and readiness before merge.

## Routing Guidance
Pick the smallest capable subagent for each task, then require an explicit handoff summary in `/.ai/task_state.md`.
