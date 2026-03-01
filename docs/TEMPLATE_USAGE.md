# Template Usage Guide (IDE AI-First)

## Purpose
This guide explains how to use this template so AI assistants in IDEs consistently recognize project standards, governance boundaries, and delivery workflows.

## 1) Bootstrap Order (Mandatory)
1. Read `.ai/PROJECT_STRUCTURE.md` first.
2. Read `.ai/AGENT_CONTRACT.md` and `.ai/rules.md`.
3. Open `.ai/STRUCTURE_CHECKLIST.md` and validate required paths.
4. Only then start implementation under `src/` and `tests/`.

Why this matters for IDE AI: most assistants infer behavior from open files and repository conventions. Loading `.ai/*` first gives explicit policy context and reduces off-template scaffolding.

## 2) Minimum Context Files to Open in IDE
When starting a new task, keep these files open:
- `.ai/PROJECT_STRUCTURE.md`
- `.ai/AGENT_CONTRACT.md`
- `.ai/rules.md`
- `.ai/task_state.md`
- `docs/Architecture.md`
- `.github/workflows/ci.yml`

This establishes structure, policy, architecture intent, and CI gates as immediate context for assistant suggestions.

## 3) Prompt Pattern for IDE AI
Use a stable instruction pattern in task prompts:
- Scope: "only modify files declared in template governance"
- Quality gates: "must pass CI structure checks, pytest, terraform validate"
- Security: "no secrets, no local-only artifacts committed"
- Documentation: "update docs and checklist when structure/policies change"

Example:
"Implement feature X in `src/python/` and tests in `tests/unit/`. Respect `.ai/PROJECT_STRUCTURE.md`, keep naming conventions, add/update docs, and ensure CI checks remain green."

## 4) Language and Folder Contracts
- Python code: `src/python/`
- R/Posit code: `src/r/`
- Rust code: `src/rust/`
- Tests: `tests/unit/`, `tests/integration/`, `tests/scripts/` (local only)
- IaC: `infra/terraform/`
- CI: `.github/workflows/`

Assistants should never place production code in `docs/`, `results/`, or `logs/`.

## 5) Naming, Style, and Documentation Expectations
- Follow `.editorconfig` for spacing, line endings, and final newline.
- Use descriptive names for files, modules, variables, and tests.
- Keep comments purposeful (intent/risk), not obvious line-by-line narration.
- Record architectural or policy-impacting changes via ADR in `docs/ADR/`.

## 6) CI/CD + IaC Workflow Expectations
- Pull requests must pass structure and forbidden-path checks.
- Python checks run via pytest (unit/integration) and optional Selenium E2E marker.
- Terraform checks include `fmt`, `init -backend=false`, and `validate`.
- If a new required file/folder is introduced, update checklist and CI required paths.

## 7) Data/AI Governance Baseline
For AI/ML work, assistants must keep these constraints explicit:
- Data source and purpose documented before ingestion.
- Sensitive data handling and retention aligned to policy.
- Inference behavior and limitations documented.
- Test scenarios include normal, edge, and failure cases.

## 8) IDE AI Operational Routine
At task start:
1. Update `.ai/task_state.md` with objective and status.
2. Confirm impacted files are in canonical structure.
3. Implement smallest complete slice + tests.
4. Run local validations relevant to changed scope.
5. Update docs/checklist if governance or structure changed.

At task end:
- Ensure no local-only paths are tracked.
- Ensure CI config still maps to actual repository paths.
- Capture next step in `.ai/task_state.md`.

## 9) Common Failure Modes to Avoid
- Creating files outside governed structure.
- Introducing tools/workflows not reflected in docs and CI.
- Forgetting to register structural changes in checklist and governance docs.
- Mixing application code with local artifacts.

## 10) Definition of Ready for New Projects
A project instantiated from this template is ready when:
- Governance files are read and acknowledged.
- CI runs successfully.
- Language lanes and tests are in place.
- Team has selected stack-specific conventions under the existing governance model.

## 11) Vibe Coding Agent Standard
Use `docs/VibeCodingAgent.md` as the official process contract for AI-assisted delivery.

Practical use:
1. Start each task by answering the mandatory user questions in that document.
2. Execute work by the defined stages (intake, discovery, design, implementation, validation, handoff).
3. Reuse the included prompt templates to keep requests objective and testable.

## 12) Jira and Azure MCP Onboarding
1. Configure environment variables from `.env.mcp.example`.
2. Confirm `.cursor/mcp.json` resolves Jira and Azure MCP endpoints.
3. Start each delivery task by loading work-item context through MCP.
4. Link implementation evidence (tests/CI) back to work items before merge.
