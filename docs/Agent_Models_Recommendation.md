# Agent Models Recommendation (based on awesome-copilot)

## Source Consulted
- https://github.com/github/awesome-copilot/blob/main/docs/README.agents.md

## Conclusion
Yes — this template benefits from ready-to-use custom agents for standardized execution across planning, implementation, security, and IaC review.

## Why This Matters
The awesome-copilot catalog confirms mature patterns for:
- role-specialized agents
- tool-scoped execution
- planning-first workflows
- governance and security review gates

## Baseline Agent Set Added
- `.github/agents/task-planner.agent.md`
- `.github/agents/swe-implementer.agent.md`
- `.github/agents/security-reviewer.agent.md`
- `.github/agents/terraform-iac-reviewer.agent.md`
- `.github/agents/jira-workflow.agent.md`
- `.github/agents/azure-devops-workflow.agent.md`

## Orchestrated Handoff Chain
- `task-planner` hands off to `swe-implementer`
- `swe-implementer` hands off to `security-reviewer`

This creates a default sequence of **plan → build → security/governance gate**.

## Optional IaC Chain
- `task-planner` can hand off to `terraform-iac-reviewer`
- `terraform-iac-reviewer` hands off to `security-reviewer`

Use this path when the primary scope is Terraform/infrastructure changes.

## Work-Item Context Chain (MCP)
- `task-planner` can hand off to `jira-workflow`
- `task-planner` can hand off to `azure-devops-workflow`

Use this path to load ticket context, acceptance criteria, dependencies, and delivery evidence requirements before implementation.

## Mapping to Your Standards
- Governance and process discipline: planner + implementer
- DevSecOps and compliance posture: security reviewer
- IaC quality and release safety: terraform reviewer

## Optional Next Agents (future)
- QA subagent focused on inference/evaluation scenarios
- Prompt Engineer for systematic prompt hardening
- GitHub Actions Expert for advanced workflow hardening

## Adoption Guidance
1. Start with this baseline set for all projects created from this template.
2. Add domain-specific agents only when recurring workflows justify specialization.
3. Keep agent instructions aligned with `.ai/*` governance files.
