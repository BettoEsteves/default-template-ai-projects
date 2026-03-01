# Structure Checklist

Use this checklist to validate repository compliance.

## Root Files
- [ ] `README.md`
- [ ] `.gitignore`
- [ ] `requirements.txt`
- [ ] `pyproject.toml`
- [ ] `Cargo.toml`
- [ ] `renv.lock`
- [ ] `CONTRIBUTING.md`
- [ ] `SECURITY.md`
- [ ] `CODE_OF_CONDUCT.md`
- [ ] `SUPPORT.md`
- [ ] `AGENTS.md`
- [ ] `CLAUDE.md`
- [ ] `.rules`
- [ ] `.cursorrules`
- [ ] `.cursorignore`
- [ ] `.env.mcp.example`

## Governance
- [ ] `.ai/PROJECT_STRUCTURE.md`
- [ ] `.ai/AGENT_CONTRACT.md`
- [ ] `.ai/rules.md`
- [ ] `.ai/skills.md`
- [ ] `.ai/subagents.md`
- [ ] `.ai/commands.ai.md`
- [ ] `.ai/task_state.md`
- [ ] `.ai/decisions.md`
- [ ] `.ai/STRUCTURE_CHECKLIST.md`
- [ ] `.ai/prompts/system.md`
- [ ] `.ai/prompts/coding.md`
- [ ] `.ai/prompts/review.md`
- [ ] `.ai/prompts/docs.md`

## Docs
- [ ] `docs/PRD.md`
- [ ] `docs/Roadmap.md`
- [ ] `docs/BoardTasks.md`
- [ ] `docs/Architecture.md`
- [ ] `docs/TEMPLATE_USAGE.md`
- [ ] `docs/GitHubFlow.md`
- [ ] `docs/PyCharm.md`
- [ ] `docs/VibeCodingAgent.md`
- [ ] `docs/GitHub_References.md`
- [ ] `docs/Cursor_Context.md`
- [ ] `docs/IDE_Context_Matrix.md`
- [ ] `docs/Agent_Models_Recommendation.md`
- [ ] `docs/MCP_Jira_Azure_Setup.md`
- [ ] `docs/Productivity_CI_Playbook.md`
- [ ] `docs/ADR/` directory exists

## Source and Tests
- [ ] `src/python/` directory exists
- [ ] `src/r/` directory exists
- [ ] `src/rust/` directory exists
- [ ] `tests/unit/` directory exists
- [ ] `tests/integration/` directory exists
- [ ] `tests/scripts/` directory exists (local only)

## Operations
- [ ] `results/` directory exists (local only)
- [ ] `logs/` directory exists (local only)
- [ ] `infra/terraform/main.tf`
- [ ] `infra/ci/` directory exists
- [ ] `infra/ci/README.md`
- [ ] `infra/ci/docker-compose.mcp.yml`
- [ ] `infra/ci/setup-project.ps1`
- [ ] `.cursor/mcp.json`
- [ ] `.cursor/plans/README.md`
- [ ] `.github/workflows/ci.yml`
- [ ] `.github/workflows/security.yml`
- [ ] `.github/CODEOWNERS`
- [ ] `.github/pull_request_template.md`
- [ ] `.github/dependabot.yml`
- [ ] `.github/copilot-instructions.md`
- [ ] `.github/agents/task-planner.agent.md`
- [ ] `.github/agents/swe-implementer.agent.md`
- [ ] `.github/agents/security-reviewer.agent.md`
- [ ] `.github/agents/terraform-iac-reviewer.agent.md`
- [ ] `.github/agents/jira-workflow.agent.md`
- [ ] `.github/agents/azure-devops-workflow.agent.md`
- [ ] `.github/ISSUE_TEMPLATE/bug_report.md`
- [ ] `.github/ISSUE_TEMPLATE/feature_request.md`
- [ ] `.github/ISSUE_TEMPLATE/security_report.md`
- [ ] `.github/ISSUE_TEMPLATE/config.yml`
- [ ] `.editorconfig`
- [ ] `tests/integration/test_selenium_smoke.py`

## Validation Notes
- Confirm all markdown files contain meaningful starter content.
- Confirm no required file is empty.
- Confirm CI fails when forbidden folders are tracked.
