# PROJECT_STRUCTURE — Single Source of Truth

This document is the **single source of truth** for the repository structure in `default-template-ai-projects`.

## Authority and Precedence
1. `/.ai/PROJECT_STRUCTURE.md` (this file)
2. Other governance files under `/.ai/`
3. Repository root documents (`README.md`, `docs/*`)
4. Tool defaults, framework conventions, IDE scaffolding, and agent preferences

If any IDE, framework, plugin, or autonomous agent proposes files or folders outside the canonical structure, this file overrides those defaults.

## Canonical Structure Policy
- Agents must only create and modify files that are declared in this template.
- Local-only folders (`results/`, `logs/`, `tests/scripts/`) exist but must not be committed.
- Any structural change requires explicit approval and an ADR under `docs/ADR/`.

## Governed Extensions in This Template
- Usage and standards docs: `docs/TEMPLATE_USAGE.md`, `docs/GitHubFlow.md`, `docs/PyCharm.md`.
- Vibe Coding process standard: `docs/VibeCodingAgent.md`.
- External benchmark references: `docs/GitHub_References.md`.
- IDE context docs: `docs/Cursor_Context.md`, `docs/IDE_Context_Matrix.md`.
- Agent model selection doc: `docs/Agent_Models_Recommendation.md`.
- MCP onboarding docs: `docs/MCP_Jira_Azure_Setup.md`, `docs/Productivity_CI_Playbook.md`.
- GitHub governance: `.github/CODEOWNERS`, `.github/pull_request_template.md`.
- Custom agent profiles: `.github/agents/task-planner.agent.md`, `.github/agents/swe-implementer.agent.md`, `.github/agents/security-reviewer.agent.md`, `.github/agents/terraform-iac-reviewer.agent.md`.
- Work-item integration agents: `.github/agents/jira-workflow.agent.md`, `.github/agents/azure-devops-workflow.agent.md`.
- Issue triage templates: `.github/ISSUE_TEMPLATE/bug_report.md`, `.github/ISSUE_TEMPLATE/feature_request.md`, `.github/ISSUE_TEMPLATE/security_report.md`, `.github/ISSUE_TEMPLATE/config.yml`.
- Repository policy docs: `CONTRIBUTING.md`, `SECURITY.md`, `CODE_OF_CONDUCT.md`, `SUPPORT.md`.
- Dependency automation and security workflows: `.github/dependabot.yml`, `.github/workflows/security.yml`.
- IDE consistency: `.editorconfig`.
- Cross-IDE always-on context files: `.github/copilot-instructions.md`, `AGENTS.md`, `CLAUDE.md`, `.rules`, `.cursorrules`.
- Cursor project context files: `.cursor/mcp.json`, `.cursorignore`, `.cursor/plans/README.md`.
- MCP environment template: `.env.mcp.example`.
- CI helper guidance: `infra/ci/README.md`.
- MCP via Docker template: `infra/ci/docker-compose.mcp.yml`.
- Project bootstrap helper: `infra/ci/setup-project.ps1`.
- Selenium E2E placeholder: `tests/integration/test_selenium_smoke.py`.

## Enforcement
- CI validates required folders/files and blocks forbidden tracked paths.
- Agents must run structure validation before ending a bootstrap task.
